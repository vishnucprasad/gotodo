import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/app/app_bloc.dart';
import 'package:gotodo/application/todo/todo_bloc.dart';
import 'package:gotodo/domain/app/day.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/pages/home_page/widgets/todo_list_tile.dart';
import 'package:intl/intl.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class TodoListView extends StatelessWidget {
  const TodoListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ItemScrollController scrollController = ItemScrollController();
    final textTheme = Theme.of(context).textTheme;
    final today = DateTime.now().weekday;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollController.jumpTo(
        index: today < 7 ? today : 0,
      );
    });

    return BlocListener<AppBloc, AppState>(
      listenWhen: (p, c) => p.selectedDateIndex != c.selectedDateIndex,
      listener: (context, state) => scrollController.jumpTo(
        index: state.selectedDateIndex,
      ),
      child: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          final dateList = context.read<AppBloc>().state.dateList;
          final todoList = state.todoList;

          return ScrollablePositionedList.separated(
            itemScrollController: scrollController,
            padding: const EdgeInsets.all(16),
            itemCount: todoList.length,
            itemBuilder: (context, index) {
              if (todoList[index] != null) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (index != 0) kHeightMedium,
                    Text(
                      DateFormat.MMMEd().format(
                        dateList[index].dateTime,
                      ),
                      style: textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Day.isToday(dateList[index])
                            ? primaryColor
                            : lightGreyColor.withOpacity(0.75),
                      ),
                    ),
                    kHeightMedium,
                    Column(
                      children: List.generate(
                        todoList[index]!.length,
                        (i) => TodoListTile(todo: todoList[index]![i]),
                      ),
                    ),
                  ],
                );
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (index != 0) kHeightMedium,
                  Text(
                    DateFormat.MMMEd().format(
                      dateList[index].dateTime,
                    ),
                    style: textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Day.isToday(dateList[index])
                          ? primaryColor
                          : lightGreyColor.withOpacity(0.75),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'No tasks',
                      textAlign: TextAlign.center,
                      style: textTheme.titleLarge?.copyWith(
                        color: lightGreyColor.withOpacity(0.5),
                      ),
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                thickness: 2,
              );
            },
          );
        },
      ),
    );
  }
}
