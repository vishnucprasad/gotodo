part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState({
    required bool isLoading,
    required bool checkAuth,
    required bool showError,
    required String? errorMessage,
    required List<Category> categoryList,
    required List<List<Todo>?> todoList,
    required Option<Either<Failure, dynamic>> failureOrSuccessOption,
  }) = _TodoState;

  factory TodoState.initial() {
    return TodoState(
      isLoading: false,
      checkAuth: false,
      showError: false,
      errorMessage: null,
      categoryList: [],
      todoList: [],
      failureOrSuccessOption: none(),
    );
  }
}
