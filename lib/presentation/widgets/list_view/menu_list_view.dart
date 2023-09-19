import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/todo/todo_bloc.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/extension/dialog_extension.dart';
import 'package:gotodo/presentation/extension/modal_bottomsheet_extension.dart';
import 'package:gotodo/presentation/router/app_router.dart';

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
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    CupertinoIcons.chart_pie_fill,
                    color: lightGreyColor,
                  ),
                  title: const Text(
                    'Statistics',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () => context.pushRoute(const StatisticsRoute()),
                ),
                const Divider(thickness: 1),
                ListTile(
                  leading: const Icon(
                    Icons.settings,
                    color: lightGreyColor,
                  ),
                  title: const Text(
                    'Settings',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () => context.pushRoute(const SettingsRoute()),
                ),
                const Divider(thickness: 1),
              ],
            ),
            kHeightLarge,
            Row(
              children: [
                Text(
                  'Categories',
                  style: textTheme.titleMedium?.copyWith(
                    color: lightGreyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                if (state.isSubmitting)
                  const SizedBox(
                    height: 16,
                    width: 16,
                    child: CircularProgressIndicator(),
                  ),
              ],
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
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    context.showCreateCategoryBottomsheet(
                                      category: category,
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.edit_square,
                                    color: Colors.lightBlue,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    context.showConfirmationDialog(
                                      title:
                                          'Are you sure you want to delete the category ${category.name} ?',
                                      icon: Icons.delete,
                                      onConfirm: () {
                                        context
                                            .read<TodoBloc>()
                                            .add(TodoEvent.deleteCategory(
                                              category.id,
                                            ));
                                        Navigator.pop(context);
                                      },
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
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
