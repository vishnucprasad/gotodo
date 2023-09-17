import 'package:flutter/material.dart';
import 'package:gotodo/domain/todo/todo_status.dart';
import 'package:gotodo/presentation/core/colors.dart';

extension MenuExtension on BuildContext {
  Future<TodoStatus?> showTodoStatusMenu({
    required Offset offset,
  }) async {
    final isDarkMode = Theme.of(this).brightness == Brightness.dark;

    return await showMenu<TodoStatus>(
      context: this,
      color: isDarkMode ? secondaryDarkColor : secondaryLightColor,
      position: RelativeRect.fromLTRB(0, offset.dy, 0, 0),
      items: [
        const PopupMenuItem<TodoStatus>(
          value: TodoStatus.todo,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Todo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.lens_outlined,
                size: 22,
              ),
            ],
          ),
        ),
        PopupMenuItem<TodoStatus>(
          value: TodoStatus.inProgress,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('In progress'),
              Icon(
                Icons.check_circle,
                size: 22,
                color: isDarkMode ? lightColor : darkColor,
              ),
            ],
          ),
        ),
        const PopupMenuItem<TodoStatus>(
          value: TodoStatus.completed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Completed'),
              Icon(
                Icons.check_circle,
                size: 22,
                color: primaryColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
