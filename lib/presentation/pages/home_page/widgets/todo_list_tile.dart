// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/app/app_bloc.dart';
import 'package:gotodo/application/todo/todo_bloc.dart';
import 'package:gotodo/domain/todo/todo.dart';
import 'package:gotodo/domain/todo/todo_status.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/extension/dialog_extension.dart';
import 'package:gotodo/presentation/extension/menu_extension.dart';

class TodoListTile extends StatelessWidget {
  const TodoListTile({
    super.key,
    required this.todo,
  });

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return ListTile(
      leading: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          return state.isSubmitting && state.submittingId == todo.id
              ? const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(),
                  ),
                )
              : InkWell(
                  customBorder: const CircleBorder(),
                  onTapDown: (details) async {
                    final status = await context.showTodoStatusMenu(
                      offset: details.globalPosition,
                    );

                    if (status != null) {
                      context.read<TodoBloc>().add(TodoEvent.changeTodoStatus(
                          todo.id,
                          status,
                          context.read<AppBloc>().state.dateList));
                    }
                  },
                  child: Checkbox(
                    checkColor: isDarkMode ? darkColor : lightColor,
                    activeColor: todo.status == TodoStatus.completed
                        ? primaryColor
                        : isDarkMode
                            ? lightColor
                            : darkColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    value: todo.status != TodoStatus.todo,
                    onChanged: (value) {},
                  ),
                );
        },
      ),
      title: Text(
        todo.task,
        style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
      trailing: todo.category != null
          ? Icon(
              Icons.label,
              color: Color(
                int.parse(todo.category!.color.substring(1, 7), radix: 16) +
                    0xFF000000,
              ),
            )
          : const Icon(
              Icons.label_off,
            ),
      onTap: () => context.showTodoDialog(todoId: todo.id),
    );
  }
}
