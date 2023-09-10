import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/app/app_bloc.dart';
import 'package:gotodo/domain/app/day.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/pages/home_page/widgets/date_button.dart';

class DateList extends StatelessWidget {
  const DateList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final defaultColor = Theme.of(context).textTheme.headlineSmall?.color;

    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return SizedBox(
          height: 80,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              7,
              (index) => DateButton(
                onPressed: () => context
                    .read<AppBloc>()
                    .add(AppEvent.changeSelectedDateIndex(index)),
                day: state.dateList[index],
                color: Day.isToday(state.dateList[index])
                    ? primaryColor
                    : Day.isPreviousDay(state.dateList[index])
                        ? defaultColor?.withOpacity(0.25)
                        : defaultColor,
                isSelected: state.selectedDateIndex == index ? true : false,
              ),
            ),
          ),
        );
      },
    );
  }
}
