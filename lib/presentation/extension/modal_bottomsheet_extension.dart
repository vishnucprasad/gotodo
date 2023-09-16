import 'package:flutter/material.dart';
import 'package:gotodo/domain/todo/category.dart';
import 'package:gotodo/presentation/widgets/bottom_sheets/create_category_bottomsheet.dart';
import 'package:gotodo/presentation/widgets/bottom_sheets/create_todo_bottomsheet.dart';
import 'package:gotodo/presentation/widgets/bottom_sheets/menu_bottomsheet.dart';

extension ModalBottomsheetExtension on BuildContext {
  void showCreateTodoBottomsheet() {
    showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => const CreateTodoBottomsheet(),
    );
  }

  void showMenuBottomsheet() {
    showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => const MenuBottomsheet(),
    );
  }

  void showCreateCategoryBottomsheet({
    Category? category,
  }) {
    showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => category != null
          ? CreateCategoryBottomsheet(category: category)
          : const CreateCategoryBottomsheet(),
    );
  }
}