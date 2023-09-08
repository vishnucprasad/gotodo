import 'package:freezed_annotation/freezed_annotation.dart';

enum TodoStatus {
  @JsonValue('todo')
  todo,
  @JsonValue('inProgress')
  inProgress,
  @JsonValue('completed')
  completed,
}
