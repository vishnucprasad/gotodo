import 'package:flutter/material.dart';
import 'package:gotodo/presentation/widgets/dialogs/color_picker_dialog.dart';
import 'package:gotodo/presentation/widgets/dialogs/confirmation_dialog.dart';
import 'package:gotodo/presentation/widgets/dialogs/todo_dialog.dart';

extension DialogExtension on BuildContext {
  void showTodoDialog({
    required String todoId,
  }) {
    showDialog(
      context: this,
      builder: (ctx) => TodoDialog(todoId: todoId),
    );
  }

  void showColorpickerDialog({
    required void Function(Color) onColorChanged,
    required String pickerColor,
  }) {
    showDialog(
      context: this,
      builder: (context) => ColorPickerDialog(
          pickerColor: Color(
            int.parse(pickerColor.substring(1, 7), radix: 16) + 0xFF000000,
          ),
          onColorChanged: onColorChanged),
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
