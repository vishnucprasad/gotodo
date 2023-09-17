import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gotodo/domain/app/day.dart';
import 'package:gotodo/domain/auth/i_auth_facade.dart';
import 'package:gotodo/domain/core/constants.dart';
import 'package:gotodo/domain/core/failure.dart';
import 'package:gotodo/domain/core/value_objects.dart';
import 'package:gotodo/domain/todo/category.dart';
import 'package:gotodo/domain/todo/category_data.dart';
import 'package:gotodo/domain/todo/i_todo_repo.dart';
import 'package:gotodo/domain/todo/todo.dart';
import 'package:gotodo/domain/todo/todo_data.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

TodoEvent? _refreshEvent;

@injectable
@prod
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final IAuthFacade _facade;
  final ITodoRepo _todoRepo;
  TodoBloc(this._todoRepo, this._facade) : super(TodoState.initial()) {
    on<TodoEvent>((event, emit) async {
      await event.map(
        categoryNameChanged: (e) async => emit(state.copyWith(
          categoryData: state.categoryData.copyWith(
            categoryName: CategoryName(e.categoryName),
          ),
          failureOrSuccessOption: none(),
        )),
        colorStringChanged: (e) async => emit(state.copyWith(
          categoryData: state.categoryData.copyWith(
            colorString: e.colorString,
          ),
          failureOrSuccessOption: none(),
        )),
        todoTaskChanged: (e) async => emit(state.copyWith(
          todoData: state.todoData.copyWith(
            task: TodoTask(e.task),
          ),
          failureOrSuccessOption: none(),
        )),
        todoDateChanged: (e) async => emit(state.copyWith(
          todoData: state.todoData.copyWith(
            date: e.date,
          ),
          failureOrSuccessOption: none(),
        )),
        todoCategoryChanged: (e) async => emit(state.copyWith(
          todoData: state.todoData.copyWith(
            category: e.category,
          ),
          failureOrSuccessOption: none(),
        )),
        todoDescriptionChanged: (e) async => emit(state.copyWith(
          todoData: state.todoData.copyWith(
            description: e.description,
          ),
          failureOrSuccessOption: none(),
        )),
        clearTodoData: (_) async => emit(state.copyWith(
          todoData: TodoData.empty(),
        )),
        createCategory: (e) async {
          if (state.isSubmitting) return;
          Either<Failure, dynamic>? failureOrSuccess;

          final isDataValid = state.categoryData.failureOption.isNone();
          if (isDataValid) {
            emit(state.copyWith(
              isSubmitting: true,
              failureOrSuccessOption: none(),
            ));

            final tokenOption = _facade.getTokens();
            if (tokenOption.isNone()) {
              return emit(state.copyWith(
                isSubmitting: false,
                showError: true,
                checkAuth: true,
                errorMessage: 'No token',
              ));
            }
            final tokens =
                tokenOption.getOrElse(() => throw UnimplementedError());

            failureOrSuccess = await _todoRepo.createCategory(
              state.categoryData,
              tokens.accessToken,
            );

            return failureOrSuccess.fold(
              (l) => l.map(
                clientFailure: (f) => emit(state.copyWith(
                  isSubmitting: false,
                  showError: true,
                  errorMessage: f.msg,
                  failureOrSuccessOption: some(left(l)),
                )),
                serverFailure: (f) => emit(state.copyWith(
                  isSubmitting: false,
                  showError: true,
                  errorMessage: f.msg,
                  failureOrSuccessOption: some(left(l)),
                )),
                tokenFailure: (f) {
                  if (f.type == TokenType.accessToken) {
                    _refreshEvent = const TodoEvent.createCategory();
                    return add(TodoEvent.refreshToken(tokens.refreshToken));
                  }

                  return emit(state.copyWith(
                    isSubmitting: false,
                    checkAuth: true,
                    showError: true,
                    errorMessage: 'Token expired',
                    failureOrSuccessOption: some(left(f)),
                  ));
                },
              ),
              (r) {
                return emit(state.copyWith(
                  isSubmitting: false,
                  categoryList: [...state.categoryList, r],
                  failureOrSuccessOption: optionOf(failureOrSuccess),
                ));
              },
            );
          }

          emit(state.copyWith(
            showValidationError: true,
            failureOrSuccessOption: optionOf(failureOrSuccess),
          ));
        },
        getCategoryList: (e) async {
          emit(state.copyWith(
            showError: false,
            errorMessage: null,
            categoryList: [],
            failureOrSuccessOption: none(),
          ));

          final tokenOption = _facade.getTokens();
          if (tokenOption.isNone()) {
            return emit(state.copyWith(
              showError: true,
              checkAuth: true,
              errorMessage: 'No token',
            ));
          }
          final tokens =
              tokenOption.getOrElse(() => throw UnimplementedError());

          final categoryOption =
              await _todoRepo.getCategoryList(tokens.accessToken);

          categoryOption.fold(
            (l) => l.map(
              clientFailure: (f) => emit(state.copyWith(
                checkAuth: true,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(f)),
              )),
              serverFailure: (f) => emit(state.copyWith(
                checkAuth: true,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(f)),
              )),
              tokenFailure: (f) {
                if (f.type == TokenType.accessToken) {
                  _refreshEvent = const TodoEvent.getCategoryList();
                  return add(TodoEvent.refreshToken(tokens.refreshToken));
                }

                return emit(state.copyWith(
                  checkAuth: true,
                  showError: true,
                  errorMessage: 'Token expired',
                  failureOrSuccessOption: some(left(f)),
                ));
              },
            ),
            (r) => emit(state.copyWith(
              showError: false,
              checkAuth: false,
              errorMessage: null,
              categoryList: r,
              failureOrSuccessOption: some(right(r)),
            )),
          );
        },
        deleteCategory: (e) async {
          if (state.isSubmitting) return;
          Either<Failure, dynamic>? failureOrSuccess;

          emit(state.copyWith(
            isSubmitting: true,
            failureOrSuccessOption: none(),
          ));

          final tokenOption = _facade.getTokens();
          if (tokenOption.isNone()) {
            return emit(state.copyWith(
              isSubmitting: false,
              showError: true,
              checkAuth: true,
              errorMessage: 'No token',
            ));
          }
          final tokens =
              tokenOption.getOrElse(() => throw UnimplementedError());

          failureOrSuccess = await _todoRepo.deleteCategory(
            e.categoryId,
            tokens.accessToken,
          );

          return failureOrSuccess.fold(
            (l) => l.map(
              clientFailure: (f) => emit(state.copyWith(
                isSubmitting: false,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(l)),
              )),
              serverFailure: (f) => emit(state.copyWith(
                isSubmitting: false,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(l)),
              )),
              tokenFailure: (f) {
                if (f.type == TokenType.accessToken) {
                  _refreshEvent = const TodoEvent.createCategory();
                  return add(TodoEvent.refreshToken(tokens.refreshToken));
                }

                return emit(state.copyWith(
                  isSubmitting: false,
                  checkAuth: true,
                  showError: true,
                  errorMessage: 'Token expired',
                  failureOrSuccessOption: some(left(f)),
                ));
              },
            ),
            (r) {
              return emit(state.copyWith(
                isSubmitting: false,
                categoryList: [
                  ...state.categoryList
                      .whereNot((element) => element.id == e.categoryId)
                ],
                failureOrSuccessOption: optionOf(failureOrSuccess),
              ));
            },
          );
        },
        editCategory: (e) async {
          if (state.isSubmitting) return;
          Either<Failure, dynamic>? failureOrSuccess;

          emit(state.copyWith(
            isSubmitting: true,
            failureOrSuccessOption: none(),
          ));

          final tokenOption = _facade.getTokens();
          if (tokenOption.isNone()) {
            return emit(state.copyWith(
              isSubmitting: false,
              showError: true,
              checkAuth: true,
              errorMessage: 'No token',
            ));
          }
          final tokens =
              tokenOption.getOrElse(() => throw UnimplementedError());

          failureOrSuccess = await _todoRepo.editCategory(
            e.categoryId,
            state.categoryData,
            tokens.accessToken,
          );

          return failureOrSuccess.fold(
            (l) => l.map(
              clientFailure: (f) => emit(state.copyWith(
                isSubmitting: false,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(l)),
              )),
              serverFailure: (f) => emit(state.copyWith(
                isSubmitting: false,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(l)),
              )),
              tokenFailure: (f) {
                if (f.type == TokenType.accessToken) {
                  _refreshEvent = const TodoEvent.createCategory();
                  return add(TodoEvent.refreshToken(tokens.refreshToken));
                }

                return emit(state.copyWith(
                  isSubmitting: false,
                  checkAuth: true,
                  showError: true,
                  errorMessage: 'Token expired',
                  failureOrSuccessOption: some(left(f)),
                ));
              },
            ),
            (r) {
              return emit(state.copyWith(
                isSubmitting: false,
                categoryList: [
                  ...state.categoryList.map(
                    (element) => element.id == e.categoryId ? r : element,
                  )
                ],
                failureOrSuccessOption: optionOf(failureOrSuccess),
              ));
            },
          );
        },
        createTodo: (e) async {
          if (state.isSubmitting) return;
          Either<Failure, dynamic>? failureOrSuccess;

          final isDataValid = state.todoData.failureOption.isNone();
          if (isDataValid) {
            emit(state.copyWith(
              isSubmitting: true,
              failureOrSuccessOption: none(),
            ));

            final tokenOption = _facade.getTokens();
            if (tokenOption.isNone()) {
              return emit(state.copyWith(
                isSubmitting: false,
                showError: true,
                checkAuth: true,
                errorMessage: 'No token',
              ));
            }
            final tokens =
                tokenOption.getOrElse(() => throw UnimplementedError());

            failureOrSuccess = await _todoRepo.createTodo(
              state.todoData,
              tokens.accessToken,
            );

            return failureOrSuccess.fold(
              (l) => l.map(
                clientFailure: (f) => emit(state.copyWith(
                  isSubmitting: false,
                  showError: true,
                  errorMessage: f.msg,
                  failureOrSuccessOption: some(left(l)),
                )),
                serverFailure: (f) => emit(state.copyWith(
                  isSubmitting: false,
                  showError: true,
                  errorMessage: f.msg,
                  failureOrSuccessOption: some(left(l)),
                )),
                tokenFailure: (f) {
                  if (f.type == TokenType.accessToken) {
                    _refreshEvent = TodoEvent.createTodo(e.dateList);
                    return add(TodoEvent.refreshToken(tokens.refreshToken));
                  }

                  return emit(state.copyWith(
                    isSubmitting: false,
                    checkAuth: true,
                    showError: true,
                    errorMessage: 'Token expired',
                    failureOrSuccessOption: some(left(f)),
                  ));
                },
              ),
              (r) {
                final List<Todo> todos = [
                  ...state.todoList
                      .expand((element) => element ?? [])
                      .where((value) => value != null)
                      .toList(),
                  r
                ];

                final todoGroupedByDate = groupBy(
                  todos,
                  (todo) => DateFormat.yMd().format(todo.date),
                );

                final List<List<Todo>?> todoList = List.generate(
                  e.dateList.length,
                  (index) => todoGroupedByDate[DateFormat.yMd().format(
                    e.dateList[index].dateTime,
                  )],
                );

                return emit(state.copyWith(
                  isSubmitting: false,
                  todoList: todoList,
                  failureOrSuccessOption: optionOf(failureOrSuccess),
                ));
              },
            );
          }

          emit(state.copyWith(
            showValidationError: true,
            failureOrSuccessOption: optionOf(failureOrSuccess),
          ));
        },
        editTodo: (e) async {
          if (state.isSubmitting) return;
          Either<Failure, dynamic>? failureOrSuccess;

          final isDataValid = state.todoData.failureOption.isNone();
          if (isDataValid) {
            emit(state.copyWith(
              isSubmitting: true,
              failureOrSuccessOption: none(),
            ));

            final tokenOption = _facade.getTokens();
            if (tokenOption.isNone()) {
              return emit(state.copyWith(
                isSubmitting: false,
                showError: true,
                checkAuth: true,
                errorMessage: 'No token',
              ));
            }
            final tokens =
                tokenOption.getOrElse(() => throw UnimplementedError());

            failureOrSuccess = await _todoRepo.editTodo(
              e.todoId,
              state.todoData,
              tokens.accessToken,
            );

            return failureOrSuccess.fold(
              (l) => l.map(
                clientFailure: (f) => emit(state.copyWith(
                  isSubmitting: false,
                  showError: true,
                  errorMessage: f.msg,
                  failureOrSuccessOption: some(left(l)),
                )),
                serverFailure: (f) => emit(state.copyWith(
                  isSubmitting: false,
                  showError: true,
                  errorMessage: f.msg,
                  failureOrSuccessOption: some(left(l)),
                )),
                tokenFailure: (f) {
                  if (f.type == TokenType.accessToken) {
                    _refreshEvent = TodoEvent.createTodo(e.dateList);
                    return add(TodoEvent.refreshToken(tokens.refreshToken));
                  }

                  return emit(state.copyWith(
                    isSubmitting: false,
                    checkAuth: true,
                    showError: true,
                    errorMessage: 'Token expired',
                    failureOrSuccessOption: some(left(f)),
                  ));
                },
              ),
              (r) {
                final List<Todo> todos = [
                  ...state.todoList
                      .expand((element) => element ?? [])
                      .where((value) => value != null)
                      .toList()
                      .map((element) => element.id == e.todoId ? r : element)
                      .toList(),
                ];

                final todoGroupedByDate = groupBy(
                  todos,
                  (todo) => DateFormat.yMd().format(todo.date),
                );

                final List<List<Todo>?> todoList = List.generate(
                  e.dateList.length,
                  (index) => todoGroupedByDate[DateFormat.yMd().format(
                    e.dateList[index].dateTime,
                  )],
                );

                return emit(state.copyWith(
                  isSubmitting: false,
                  todoList: todoList,
                  failureOrSuccessOption: optionOf(failureOrSuccess),
                ));
              },
            );
          }

          emit(state.copyWith(
            showValidationError: true,
            failureOrSuccessOption: optionOf(failureOrSuccess),
          ));
        },
        deleteTodo: (e) async {
          if (state.isSubmitting) return;
          emit(state.copyWith(
            isSubmitting: true,
            failureOrSuccessOption: none(),
          ));

          final tokenOption = _facade.getTokens();
          if (tokenOption.isNone()) {
            return emit(state.copyWith(
              isSubmitting: false,
              showError: true,
              checkAuth: true,
              errorMessage: 'No token',
            ));
          }
          final tokens =
              tokenOption.getOrElse(() => throw UnimplementedError());

          final failureOrSuccess = await _todoRepo.deleteTodo(
            e.todoId,
            tokens.accessToken,
          );

          return failureOrSuccess.fold(
            (l) => l.map(
              clientFailure: (f) => emit(state.copyWith(
                isSubmitting: false,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(l)),
              )),
              serverFailure: (f) => emit(state.copyWith(
                isSubmitting: false,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(l)),
              )),
              tokenFailure: (f) {
                if (f.type == TokenType.accessToken) {
                  _refreshEvent = TodoEvent.createTodo(e.dateList);
                  return add(TodoEvent.refreshToken(tokens.refreshToken));
                }

                return emit(state.copyWith(
                  isSubmitting: false,
                  checkAuth: true,
                  showError: true,
                  errorMessage: 'Token expired',
                  failureOrSuccessOption: some(left(f)),
                ));
              },
            ),
            (r) {
              final List<Todo> todos = [
                ...state.todoList
                    .expand((element) => element ?? [])
                    .where((value) => value != null)
                    .toList()
                    .whereNot((element) => element.id == e.todoId)
                    .toList(),
              ];

              final todoGroupedByDate = groupBy(
                todos,
                (todo) => DateFormat.yMd().format(todo.date),
              );

              final List<List<Todo>?> todoList = List.generate(
                e.dateList.length,
                (index) => todoGroupedByDate[DateFormat.yMd().format(
                  e.dateList[index].dateTime,
                )],
              );

              return emit(state.copyWith(
                isSubmitting: false,
                todoList: todoList,
                failureOrSuccessOption: optionOf(failureOrSuccess),
              ));
            },
          );
        },
        getTodoList: (e) async {
          emit(state.copyWith(
            isLoading: true,
            showError: false,
            errorMessage: null,
            todoList: [],
            failureOrSuccessOption: none(),
          ));

          final tokenOption = _facade.getTokens();
          if (tokenOption.isNone()) {
            return emit(state.copyWith(
              isLoading: false,
              showError: true,
              checkAuth: true,
              errorMessage: 'No token',
            ));
          }
          final tokens =
              tokenOption.getOrElse(() => throw UnimplementedError());

          final todoOption = await _todoRepo.getTodoList(
            e.dateList,
            tokens.accessToken,
          );

          todoOption.fold(
            (l) => l.map(
              clientFailure: (f) => emit(state.copyWith(
                isLoading: false,
                checkAuth: true,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(f)),
              )),
              serverFailure: (f) => emit(state.copyWith(
                isLoading: false,
                checkAuth: true,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(f)),
              )),
              tokenFailure: (f) {
                if (f.type == TokenType.accessToken) {
                  _refreshEvent = TodoEvent.getTodoList(e.dateList);
                  return add(TodoEvent.refreshToken(tokens.refreshToken));
                }

                return emit(state.copyWith(
                  isLoading: false,
                  checkAuth: true,
                  showError: true,
                  errorMessage: 'Token expired',
                  failureOrSuccessOption: some(left(f)),
                ));
              },
            ),
            (r) => emit(state.copyWith(
              isLoading: false,
              showError: false,
              checkAuth: false,
              errorMessage: null,
              todoList: r,
              failureOrSuccessOption: some(right(r)),
            )),
          );
        },
        refreshToken: (e) async {
          final tokenOption = await _facade.refreshToken(e.refreshToken);
          tokenOption.fold(
            (l) => emit(state.copyWith(
              showError: true,
              checkAuth: true,
              errorMessage: 'Something went wrong',
              failureOrSuccessOption: some(left(l)),
            )),
            (r) async {
              await _facade.saveTokens(r);

              if (_refreshEvent != null) {
                add(_refreshEvent!);
              }
            },
          );
        },
        authCheckRequested: (e) {
          emit(state.copyWith(
            checkAuth: false,
          ));
        },
      );
    });
  }
}
