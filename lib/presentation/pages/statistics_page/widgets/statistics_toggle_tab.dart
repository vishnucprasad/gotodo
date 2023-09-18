import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:gotodo/presentation/core/colors.dart';

class StatisticsToggleTab extends StatelessWidget {
  const StatisticsToggleTab({
    super.key,
  });

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
      selectedIndex: 0,
      selectedLabelIndex: (index) {},
    );
  }
}
