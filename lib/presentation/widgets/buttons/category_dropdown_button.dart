import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/todo/todo_bloc.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';

class CategoryDropdownButton extends StatelessWidget {
  const CategoryDropdownButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        Theme.of(context).colorScheme.brightness == Brightness.dark;

    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: isDarkMode
                ? darkGreyColor.withOpacity(0.15)
                : lightGreyColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: DropdownButton(
            onChanged: (value) {},
            itemHeight: 50,
            underline: const SizedBox(),
            dropdownColor:
                isDarkMode ? secondaryDarkColor : secondaryLightColor,
            borderRadius: BorderRadius.circular(10),
            hint: const Row(
              children: [
                Icon(Icons.label_off),
                kWidthSmall,
                Text('No Category'),
              ],
            ),
            items: state.categoryList.map((e) {
              return DropdownMenuItem(
                value: e,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.label,
                      color: Color(
                        int.parse(
                              e.color.substring(1, 7),
                              radix: 16,
                            ) +
                            0xFF000000,
                      ),
                    ),
                    kWidthMedium,
                    Text(e.name),
                  ],
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
