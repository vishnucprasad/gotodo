import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gotodo/domain/todo/category.dart';

import '../core/value_failure.dart';
import '../core/value_objects.dart';
part 'todo_data.freezed.dart';

@freezed
class TodoData with _$TodoData {
  const TodoData._();
  const factory TodoData({
    required TodoTask task,
    required DateTime date,
    required Category? category,
    required String? description,
  }) = _TodoData;

  factory TodoData.empty() {
    return TodoData(
      task: TodoTask(""),
      date: DateTime.now(),
      category: null,
      description: null,
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return task.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
