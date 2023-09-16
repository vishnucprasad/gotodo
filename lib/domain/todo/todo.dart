// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gotodo/domain/todo/category.dart';
import 'package:gotodo/domain/todo/todo_status.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    @JsonKey(name: '_id') required String id,
    required String task,
    required DateTime date,
    required TodoStatus status,
    required Category? category,
    required String? description,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
