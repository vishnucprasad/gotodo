import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/todo/todo_bloc.dart';
import 'package:gotodo/domain/todo/category.dart';
import 'package:gotodo/domain/todo/todo.dart';
import 'package:gotodo/presentation/widgets/bottom_sheets/create_category_bottomsheet.dart';
import 'package:gotodo/presentation/widgets/bottom_sheets/create_todo_bottomsheet.dart';
import 'package:gotodo/presentation/widgets/bottom_sheets/menu_bottomsheet.dart';

extension ModalBottomsheetExtension on BuildContext {
  void showCreateTodoBottomsheet({
    Todo? todo,
  }) {
    showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => todo != null
          ? CreateTodoBottomsheet(todo: todo)
          : const CreateTodoBottomsheet(),
    ).whenComplete(() => read<TodoBloc>().add(const TodoEvent.clearTodoData()));
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
    ).whenComplete(
      () => read<TodoBloc>().add(const TodoEvent.clearCategoryData()),
    );
  }
}
