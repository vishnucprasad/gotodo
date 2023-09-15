import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/todo/todo_bloc.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/extension/modal_bottomsheet_extension.dart';

class MenuListView extends StatelessWidget {
  const MenuListView({this.controller, super.key});

  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Column(
              children: [
                ListTile(
                  leading: Icon(
                    CupertinoIcons.chart_pie_fill,
                    color: lightGreyColor,
                  ),
                  title: Text(
                    'Statistics',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Divider(thickness: 1),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: lightGreyColor,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Divider(thickness: 1),
              ],
            ),
            kHeightLarge,
            Text(
              'Categories',
              style: textTheme.titleMedium?.copyWith(
                color: lightGreyColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            kHeight,
            Expanded(
              child: ListView(
                controller: controller,
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.add,
                      color: primaryColor,
                    ),
                    title: Text(
                      'New Category',
                      style: textTheme.titleMedium?.copyWith(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      context.showCreateCategoryBottomsheet();
                    },
                  ),
                  const Divider(thickness: 1),
                  ...List.generate(
                    state.categoryList.length,
                    (index) {
                      final category = state.categoryList[index];

                      return Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.label,
                              color: Color(
                                int.parse(category.color.substring(1, 7),
                                        radix: 16) +
                                    0xFF000000,
                              ),
                            ),
                            title: Text(
                              category.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Divider(thickness: 1)
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
