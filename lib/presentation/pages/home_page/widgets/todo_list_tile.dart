import 'package:flutter/material.dart';
import 'package:gotodo/domain/todo/todo.dart';
import 'package:gotodo/presentation/extension/dialog_extension.dart';

class TodoListTile extends StatelessWidget {
  const TodoListTile({
    super.key,
    required this.todo,
  });

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ListTile(
      leading: Checkbox(
        value: false,
        onChanged: (value) {},
      ),
      title: Text(
        todo.task,
        style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
      trailing: Icon(
        Icons.label,
        color: Color(
          int.parse(todo.category.color.substring(1, 7), radix: 16) +
              0xFF000000,
        ),
      ),
      onTap: () => context.showTodoDialog(todo: todo),
    );
  }
}
