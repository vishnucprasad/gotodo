import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gotodo/domain/app/day.dart';
import 'package:gotodo/domain/auth/i_auth_facade.dart';
import 'package:gotodo/domain/core/constants.dart';
import 'package:gotodo/domain/core/failure.dart';
import 'package:gotodo/domain/todo/category.dart';
import 'package:gotodo/domain/todo/i_todo_repo.dart';
import 'package:gotodo/domain/todo/todo.dart';
import 'package:injectable/injectable.dart';

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
                  add(TodoEvent.refreshToken(tokens.refreshToken));
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
        getCategoryList: (e) async {
          emit(state.copyWith(
            isLoading: true,
            showError: false,
            errorMessage: null,
            categoryList: [],
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

          final todoOption =
              await _todoRepo.getCategoryList(tokens.accessToken);

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
                  _refreshEvent = const TodoEvent.getCategoryList();
                  add(TodoEvent.refreshToken(tokens.refreshToken));
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
              showError: false,
              checkAuth: false,
              errorMessage: null,
              categoryList: r,
              failureOrSuccessOption: some(right(r)),
            )),
          );
        },
        refreshToken: (e) async {
          final tokenOption = await _facade.refreshToken(e.refreshToken);
          tokenOption.fold(
            (l) => emit(state.copyWith(
              isLoading: false,
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
