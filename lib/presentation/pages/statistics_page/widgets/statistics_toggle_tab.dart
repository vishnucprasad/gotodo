import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:gotodo/application/statistics/statistics_bloc.dart';
import 'package:gotodo/domain/statistics/date_range.dart';
import 'package:gotodo/presentation/core/colors.dart';

class StatisticsToggleTab extends StatelessWidget {
  const StatisticsToggleTab({
    required this.selectedIndex,
    super.key,
  });

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return FlutterToggleTab(
      width: 92,
      isScroll: false,
      borderRadius: 10,
      selectedTextStyle: const TextStyle(fontWeight: FontWeight.bold),
      selectedBackgroundColors:
          isDarkMode ? [secondaryDarkColor] : [secondaryLightColor],
      unSelectedBackgroundColors: isDarkMode ? [darkColor] : [lightColor],
      labels: const [
        "Weekly",
        "Monthly",
        "Yearly",
        "Infinity",
      ],
      selectedIndex: selectedIndex,
      selectedLabelIndex: (index) {
        if (index != selectedIndex) {
          context
              .read<StatisticsBloc>()
              .add(StatisticsEvent.changeSelectedIndex(index));

          switch (index) {
            case 0:
              {
                context
                    .read<StatisticsBloc>()
                    .add(StatisticsEvent.changeDateRage(DateRange.week()));
              }
            case 1:
              {
                context
                    .read<StatisticsBloc>()
                    .add(StatisticsEvent.changeDateRage(DateRange.month()));
              }
            case 2:
              {
                context
                    .read<StatisticsBloc>()
                    .add(StatisticsEvent.changeDateRage(DateRange.year()));
              }
            case 3:
              {
                context
                    .read<StatisticsBloc>()
                    .add(StatisticsEvent.changeDateRage(DateRange.infinity()));
              }
          }
        }
      },
    );
  }
}
