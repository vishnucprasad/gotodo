part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState({
    required bool isLoading,
    required bool isSubmitting,
    required bool checkAuth,
    required bool showError,
    required bool showValidationError,
    required String? submittingId,
    required CategoryData categoryData,
    required TodoData todoData,
    required String? errorMessage,
    required List<Category> categoryList,
    required List<List<Todo>?> todoList,
    required Option<Either<Failure, dynamic>> failureOrSuccessOption,
  }) = _TodoState;

  factory TodoState.initial() {
    return TodoState(
      isLoading: false,
      isSubmitting: false,
      checkAuth: false,
      showError: false,
      showValidationError: false,
      submittingId: null,
      categoryData: CategoryData.empty(),
      todoData: TodoData.empty(),
      errorMessage: null,
      categoryList: [],
      todoList: [],
      failureOrSuccessOption: none(),
    );
  }
}
