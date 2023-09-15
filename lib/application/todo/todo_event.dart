part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.getCategoryList() = _GetCategoryList;
  const factory TodoEvent.getTodoList(List<Day> dateList) = _GetTodoList;
  const factory TodoEvent.refreshToken(String refreshToken) = _RefreshToken;
  const factory TodoEvent.authCheckRequested() = _AuthCheckRequested;
}
