import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';

class StatisticsOverview extends StatelessWidget {
  const StatisticsOverview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 16, right: 8),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: isDarkMode ? secondaryDarkColor : secondaryLightColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '49',
                        style: TextStyle(
                          fontSize: 62,
                          color: isDarkMode ? lightColor : darkColor,
                        ),
                      ),
                      const TextSpan(
                        text: '/98',
                        style: TextStyle(
                          fontSize: 32,
                          color: lightGreyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Completed',
                  style: TextStyle(
                    fontSize: 16,
                    color: lightGreyColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 8, right: 16),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: isDarkMode ? secondaryDarkColor : secondaryLightColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '50',
                        style: TextStyle(
                          fontSize: 62,
                          color: isDarkMode ? lightColor : darkColor,
                        ),
                      ),
                      const TextSpan(
                        text: '%',
                        style: TextStyle(
                          fontSize: 32,
                          color: lightGreyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Completion rate',
                  style: TextStyle(
                    fontSize: 16,
                    color: lightGreyColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
