import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:gotodo/domain/todo/todo.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/widgets/buttons/large_button.dart';

extension DialogExtension on BuildContext {
  void showTodoDialog({
    required Todo todo,
  }) {
    final textTheme = Theme.of(this).textTheme;

    showDialog(
      context: this,
      builder: (ctx) => SizedBox(
        child: AlertDialog(
          backgroundColor: Theme.of(this).scaffoldBackgroundColor,
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
            width: MediaQuery.of(this).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.label,
                      color: Color(
                        int.parse(
                              todo.category.color.substring(1, 7),
                              radix: 16,
                            ) +
                            0xFF000000,
                      ),
                    ),
                    kWidthSmall,
                    Text(
                      todo.category.name,
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
                SingleChildScrollView(child: Text(todo.description!)),
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
      ),
    );
  }

  void showColorpickerDialog({
    required void Function(Color) onColorChanged,
  }) {
    final isDarkMode = Theme.of(this).brightness == Brightness.dark;
    final textTheme = Theme.of(this).textTheme;

    showDialog(
      context: this,
      builder: (context) => SizedBox(
        child: AlertDialog(
          backgroundColor:
              isDarkMode ? secondaryDarkColor : secondaryLightColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(
              color: darkGreyColor.withOpacity(0.5),
              width: 0.5,
            ),
          ),
          insetPadding: const EdgeInsets.all(16),
          title: Text(
            'Pick a color',
            style: textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          content: SizedBox(
            width: MediaQuery.of(this).size.width,
            child: SingleChildScrollView(
              child: HueRingPicker(
                pickerColor: primaryColor,
                onColorChanged: onColorChanged,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 16,
              ),
              child: LargeButton(
                text: 'Done',
                onPressesd: () {
                  context.router.pop();
                },
                isLoading: false,
                loadingText: '',
              ),
            )
          ],
        ),
      ),
    );
  }
}
