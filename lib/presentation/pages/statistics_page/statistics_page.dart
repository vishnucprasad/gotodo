import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';

@RoutePage()
class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    const tempList = [
      CategoryProgressTile(),
      CategoryProgressTile(),
      CategoryProgressTile(),
      CategoryProgressTile(),
      CategoryProgressTile(),
      CategoryProgressTile(),
      CategoryProgressTile(),
      CategoryProgressTile(),
      CategoryProgressTile(),
      CategoryProgressTile(),
      CategoryProgressTile(),
      CategoryProgressTile(),
      CategoryProgressTile(),
      CategoryProgressTile(),
      CategoryProgressTile(),
      CategoryProgressTile(),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                kWidthMedium,
                IconButton(
                  onPressed: () => context.popRoute(),
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 32,
                  ),
                ),
                kWidthMedium,
                const Text(
                  'Statistics',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            kHeight,
            FlutterToggleTab(
              width: 92,
              isScroll: false,
              borderRadius: 10,
              selectedTextStyle: const TextStyle(fontWeight: FontWeight.bold),
              selectedBackgroundColors:
                  isDarkMode ? [secondaryDarkColor] : [secondaryLightColor],
              unSelectedBackgroundColors:
                  isDarkMode ? [darkColor] : [lightColor],
              labels: const [
                "Weekly",
                "Monthly",
                "Yearly",
                "Infinity",
              ],
              selectedIndex: 0,
              selectedLabelIndex: (index) {},
            ),
            kHeight,
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 8),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color:
                          isDarkMode ? secondaryDarkColor : secondaryLightColor,
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
                      color:
                          isDarkMode ? secondaryDarkColor : secondaryLightColor,
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
            ),
            kHeight,
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => tempList[index],
                  separatorBuilder: (context, index) =>
                      const Divider(thickness: 1),
                  itemCount: tempList.length),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryProgressTile extends StatelessWidget {
  const CategoryProgressTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return ListTile(
      leading: Icon(
        Icons.label,
        color: Colors.yellow[800],
        size: 28,
      ),
      title: const Text(
        'Work',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '24 / ',
                  style: TextStyle(
                    fontSize: 18,
                    color: isDarkMode ? lightColor : darkColor,
                  ),
                ),
                const TextSpan(
                  text: '30',
                  style: TextStyle(
                    color: lightGreyColor,
                  ),
                )
              ],
            ),
          ),
          kWidthLarge,
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '80 ',
                  style: TextStyle(
                    fontSize: 18,
                    color: isDarkMode ? lightColor : darkColor,
                  ),
                ),
                const TextSpan(
                  text: '%',
                  style: TextStyle(
                    color: lightGreyColor,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
