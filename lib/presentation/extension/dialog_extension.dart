import 'package:flutter/material.dart';
import 'package:gotodo/domain/todo/todo.dart';
import 'package:gotodo/presentation/widgets/dialogs/color_picker_dialog.dart';
import 'package:gotodo/presentation/widgets/dialogs/confirmation_dialog.dart';
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

  void showConfirmationDialog({
    required String title,
    required IconData icon,
    required void Function()? onConfirm,
  }) {
    showDialog(
      context: this,
      builder: (context) => ConfirmationDialog(
        title: title,
        icon: icon,
        onConfirm: onConfirm,
      ),
    );
  }
}
