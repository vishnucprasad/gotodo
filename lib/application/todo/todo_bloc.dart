import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gotodo/domain/app/day.dart';
import 'package:gotodo/domain/core/failure.dart';
import 'package:gotodo/domain/todo/category.dart';
import 'package:gotodo/domain/todo/i_todo_repo.dart';
import 'package:gotodo/domain/todo/todo.dart';
import 'package:injectable/injectable.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

@injectable
@prod
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final ITodoRepo _todoRepo;
  TodoBloc(this._todoRepo) : super(TodoState.initial()) {
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

          final todoOption = await _todoRepo.getTodoList(e.dateList);

          emit(todoOption.fold(
            (l) => state.copyWith(
              isLoading: false,
              showError: true,
              errorMessage: 'Some error',
              failureOrSuccessOption: some(left(l)),
            ),
            (r) => state.copyWith(
              isLoading: false,
              todoList: r,
              failureOrSuccessOption: some(right(r)),
            ),
          ));
        },
        getCategoryList: (e) async {
          emit(state.copyWith(
            isLoading: true,
            showError: false,
            errorMessage: null,
            categoryList: [],
            failureOrSuccessOption: none(),
          ));

          final todoOption = await _todoRepo.getCategoryList();

          emit(todoOption.fold(
            (l) => state.copyWith(
              isLoading: false,
              showError: true,
              errorMessage: 'Some error',
              failureOrSuccessOption: some(left(l)),
            ),
            (r) => state.copyWith(
              isLoading: false,
              categoryList: r,
              failureOrSuccessOption: some(right(r)),
            ),
          ));
        },
      );
    });
  }
}
