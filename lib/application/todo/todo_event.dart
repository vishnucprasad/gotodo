part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.getCategoryList() = _getCategoryList;
  const factory TodoEvent.getTodoList(List<Day> dateList) = _getTodoList;
}
