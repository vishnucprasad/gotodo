import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/pages/home_page/widgets/bottom_bar.dart';
import 'package:gotodo/presentation/pages/home_page/widgets/date_list.dart';
import 'package:gotodo/presentation/pages/home_page/widgets/todo_list_view.dart';
import 'package:gotodo/presentation/widgets/gotodo_app_bar.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomBar(),
      body: SafeArea(
        child: Column(
          children: [
            GotodoAppBar(),
            kHeight,
            DateList(),
            Expanded(child: TodoListView()),
          ],
        ),
      ),
    );
  }
}
