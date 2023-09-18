import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:gotodo/domain/todo/category.dart';
import 'package:gotodo/domain/todo/todo.dart';
import 'package:gotodo/domain/todo/todo_status.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';

class CategoryProgressTile extends StatelessWidget {
  const CategoryProgressTile({
    super.key,
    required this.todoList,
    this.category,
  });

  final List<Todo> todoList;
  final Category? category;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    final categoryTodos = todoList.where((todo) => todo.category == category);

    final todoGroupedByStatus = groupBy(
      categoryTodos,
      (todo) => todo.status,
    );
    final completedCount =
        todoGroupedByStatus[TodoStatus.completed]?.length ?? 0;
    final totalCount = categoryTodos.length;
    final completionRate =
        totalCount == 0 ? 0 : (completedCount / totalCount) * 100;

    return ListTile(
      leading: category != null
          ? Icon(
              Icons.label,
              color: Color(
                int.parse(category!.color.substring(1, 7), radix: 16) +
                    0xFF000000,
              ),
              size: 28,
            )
          : const Icon(
              Icons.label_off,
              size: 28,
            ),
      title: Text(
        category != null ? category!.name : 'No category',
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$completedCount / ',
                  style: TextStyle(
                    fontSize: 18,
                    color: isDarkMode ? lightColor : darkColor,
                  ),
                ),
                TextSpan(
                  text: '$totalCount',
                  style: const TextStyle(
                    color: lightGreyColor,
                  ),
                )
              ],
            ),
          ),
          kWidthLarge,
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '${completionRate.ceil()}',
                  style: TextStyle(
                    fontSize: 18,
                    color: isDarkMode ? lightColor : darkColor,
                  ),
                ),
                const TextSpan(
                  text: '%',
                  style: TextStyle(
                    color: lightGreyColor,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
