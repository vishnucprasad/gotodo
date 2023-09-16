import 'package:flutter/material.dart';
import 'package:gotodo/domain/todo/todo.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';

class TodoDialog extends StatelessWidget {
  const TodoDialog({
    super.key,
    required this.todo,
  });

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      child: AlertDialog(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: darkGreyColor.withOpacity(0.5),
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
                value: false,
                onChanged: (value) {},
                title: Text(
                  'Todo',
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CheckboxListTile(
                contentPadding: EdgeInsets.zero,
                value: false,
                onChanged: (value) {},
                title: Text(
                  'In Progress',
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CheckboxListTile(
                contentPadding: EdgeInsets.zero,
                value: false,
                onChanged: (value) {},
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
      ),
    );
  }
}
