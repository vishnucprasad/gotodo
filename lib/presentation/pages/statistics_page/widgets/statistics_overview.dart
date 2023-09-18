import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:gotodo/domain/todo/category.dart';
import 'package:gotodo/domain/todo/todo.dart';
import 'package:gotodo/domain/todo/todo_status.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';

class StatisticsOverview extends StatelessWidget {
  const StatisticsOverview({
    required this.categoryList,
    required this.todoList,
    super.key,
  });

  final List<Category> categoryList;
  final List<Todo> todoList;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    final todoGroupedByStatus = groupBy(
      todoList,
      (todo) => todo.status,
    );
    final completedCount =
        todoGroupedByStatus[TodoStatus.completed]?.length ?? 0;
    final totalCount = todoList.length;
    final completionRate =
        totalCount == 0 ? 0 : (completedCount / totalCount) * 100;

    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 16, right: 8),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: isDarkMode ? secondaryDarkColor : secondaryLightColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '$completedCount',
                        style: TextStyle(
                          fontSize: 48,
                          color: isDarkMode ? lightColor : darkColor,
                        ),
                      ),
                      TextSpan(
                        text: '/$totalCount',
                        style: const TextStyle(
                          fontSize: 32,
                          color: lightGreyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                kHeightMedium,
                const Text(
                  'Completed',
                  style: TextStyle(
                    fontSize: 16,
                    color: lightGreyColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 8, right: 16),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: isDarkMode ? secondaryDarkColor : secondaryLightColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '${completionRate.round()}',
                        style: TextStyle(
                          fontSize: 48,
                          color: isDarkMode ? lightColor : darkColor,
                        ),
                      ),
                      TextSpan(
                        text:
                            '${completionRate.toStringAsFixed(2).substring(completionRate.toStringAsFixed(2).length - 3)} %',
                        style: const TextStyle(
                          fontSize: 32,
                          color: lightGreyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                kHeightMedium,
                const Text(
                  'Completion rate',
                  style: TextStyle(
                    fontSize: 16,
                    color: lightGreyColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
