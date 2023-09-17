import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/app/app_bloc.dart';
import 'package:gotodo/application/todo/todo_bloc.dart';
import 'package:gotodo/domain/todo/todo.dart';
import 'package:gotodo/domain/todo/todo_status.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/extension/dialog_extension.dart';
import 'package:gotodo/presentation/extension/modal_bottomsheet_extension.dart';
import 'package:gotodo/presentation/widgets/buttons/dialog_button.dart';

class TodoDialog extends StatelessWidget {
  const TodoDialog({
    super.key,
    required this.todoId,
  });

  final String todoId;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      child: BlocConsumer<TodoBloc, TodoState>(
        listenWhen: (p, c) =>
            p.failureOrSuccessOption != c.failureOrSuccessOption,
        listener: (context, state) {
          state.failureOrSuccessOption.map(
            (a) => a.map(
              (r) {
                if (r == todoId) {
                  Navigator.pop(context);
                }
              },
            ),
          );
        },
        builder: (context, state) {
          final Todo todo = state.todoList
              .expand((element) => element ?? [])
              .where((value) => value != null)
              .toList()
              .firstWhere((element) => element.id == todoId);

          return AlertDialog(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                color: darkGreyColor.withOpacity(0.75),
                width: 0.5,
              ),
            ),
            insetPadding: const EdgeInsets.all(16),
            title: Text(
              todo.task,
              style: textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            content: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  todo.category != null
                      ? Row(
                          children: [
                            Icon(
                              Icons.label,
                              color: Color(
                                int.parse(
                                      todo.category!.color.substring(1, 7),
                                      radix: 16,
                                    ) +
                                    0xFF000000,
                              ),
                            ),
                            kWidthSmall,
                            Text(
                              todo.category!.name,
                              style: textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            const Icon(
                              Icons.label_off,
                            ),
                            kWidthSmall,
                            Text(
                              'No category',
                              style: textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                  kHeight,
                  Text(
                    'Description',
                    style: textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  kHeight,
                  SingleChildScrollView(
                    child: Text(todo.description ?? 'No description'),
                  ),
                  kHeight,
                  Text(
                    'Status',
                    style: textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    checkColor: darkColor,
                    value: todo.status == TodoStatus.todo,
                    onChanged: (checked) {
                      if (checked != null && checked) {
                        context.read<TodoBloc>().add(TodoEvent.changeTodoStatus(
                            todo.id,
                            TodoStatus.todo,
                            context.read<AppBloc>().state.dateList));
                      }
                    },
                    title: Text(
                      'Todo',
                      style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    value: todo.status == TodoStatus.inProgress,
                    onChanged: (checked) {
                      if (checked != null && checked) {
                        context.read<TodoBloc>().add(TodoEvent.changeTodoStatus(
                            todo.id,
                            TodoStatus.inProgress,
                            context.read<AppBloc>().state.dateList));
                      }
                    },
                    title: Text(
                      'In Progress',
                      style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    value: todo.status == TodoStatus.completed,
                    onChanged: (checked) {
                      if (checked != null && checked) {
                        context.read<TodoBloc>().add(TodoEvent.changeTodoStatus(
                            todo.id,
                            TodoStatus.completed,
                            context.read<AppBloc>().state.dateList));
                      }
                    },
                    title: Text(
                      'Completed',
                      style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (state.isSubmitting)
                      const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(),
                      ),
                    const Spacer(),
                    DialogButton(
                      label: 'Edit',
                      onPressed: () {
                        Navigator.pop(context);

                        context
                            .read<TodoBloc>()
                            .add(TodoEvent.todoTaskChanged(todo.task));
                        context
                            .read<TodoBloc>()
                            .add(TodoEvent.todoDescriptionChanged(
                              todo.description ?? "",
                            ));
                        context
                            .read<TodoBloc>()
                            .add(TodoEvent.todoDateChanged(todo.date));
                        context
                            .read<TodoBloc>()
                            .add(TodoEvent.todoCategoryChanged(todo.category));

                        context.showCreateTodoBottomsheet(
                          todo: todo,
                        );
                      },
                      foregroundColor: lightColor,
                      backgroundColor: Colors.lightBlue,
                    ),
                    kWidthMedium,
                    DialogButton(
                      label: 'Delete',
                      onPressed: () {
                        context.showConfirmationDialog(
                          title:
                              'Are you sure you want to delete the todo ${todo.task} ?',
                          icon: Icons.delete,
                          onConfirm: () {
                            context.read<TodoBloc>().add(TodoEvent.deleteTodo(
                                todo.id,
                                context.read<AppBloc>().state.dateList));
                            Navigator.pop(context);
                          },
                        );
                      },
                      foregroundColor: lightColor,
                      backgroundColor: Colors.red,
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
