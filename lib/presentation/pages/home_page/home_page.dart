import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/todo/todo_bloc.dart';
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
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      body: SafeArea(
        child: Column(
          children: [
            const GotodoAppBar(),
            kHeight,
            const DateList(),
            Expanded(child: BlocBuilder<TodoBloc, TodoState>(
              builder: (context, state) {
                return state.isLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : const TodoListView();
              },
            )),
          ],
        ),
      ),
    );
  }
}
