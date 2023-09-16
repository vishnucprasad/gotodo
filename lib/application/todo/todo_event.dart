part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.categoryNameChanged(
    String categoryName,
  ) = CategoryNameChanged;
  const factory TodoEvent.colorStringChanged(
    String colorString,
  ) = _ColorStringChanged;
  const factory TodoEvent.todoTaskChanged(String task) = _TodoTaskChanged;
  const factory TodoEvent.todoDateChanged(DateTime date) = _TodoDateChanged;
  const factory TodoEvent.todoCategoryChanged(
    Category? category,
  ) = _TodoCategoryChanged;
  const factory TodoEvent.todoDescriptionChanged(
    String description,
  ) = _TodoDescriptionChanged;
  const factory TodoEvent.createCategory() = _CreateCategory;
  const factory TodoEvent.getCategoryList() = _GetCategoryList;
  const factory TodoEvent.deleteCategory(String categoryId) = _DeleteCategory;
  const factory TodoEvent.editCategory(String categoryId) = _EditCategory;
  const factory TodoEvent.createTodo(List<Day> dateList) = _CreateTodo;
  const factory TodoEvent.getTodoList(List<Day> dateList) = _GetTodoList;
  const factory TodoEvent.refreshToken(String refreshToken) = _RefreshToken;
  const factory TodoEvent.authCheckRequested() = _AuthCheckRequested;
}
