import 'package:flutter/material.dart';
import 'package:gotodo/domain/todo/todo.dart';
import 'package:gotodo/presentation/widgets/dialogs/color_picker_dialog.dart';
import 'package:gotodo/presentation/widgets/dialogs/todo_dialog.dart';

extension DialogExtension on BuildContext {
  void showTodoDialog({
    required Todo todo,
  }) {
    showDialog(
      context: this,
      builder: (ctx) => TodoDialog(todo: todo),
    );
  }

  void showColorpickerDialog({
    required void Function(Color) onColorChanged,
  }) {
    showDialog(
      context: this,
      builder: (context) => ColorPickerDialog(onColorChanged: onColorChanged),
    );
  }
}
