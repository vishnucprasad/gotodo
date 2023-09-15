part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.categoryNameChanged(
    String categoryName,
  ) = CategoryNameChanged;
  const factory TodoEvent.colorStringChanged(
    String colorString,
  ) = _ColorStringChanged;
  const factory TodoEvent.createCategory() = _CreateCategory;
  const factory TodoEvent.getCategoryList() = _GetCategoryList;
  const factory TodoEvent.deleteCategory(String categoryId) = _DeleteCategory;
  const factory TodoEvent.getTodoList(List<Day> dateList) = _GetTodoList;
  const factory TodoEvent.refreshToken(String refreshToken) = _RefreshToken;
  const factory TodoEvent.authCheckRequested() = _AuthCheckRequested;
}
