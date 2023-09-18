import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/pages/statistics_page/widgets/category_progress_tile.dart';
import 'package:gotodo/presentation/pages/statistics_page/widgets/statistics_app_bar.dart';
import 'package:gotodo/presentation/pages/statistics_page/widgets/statistics_overview.dart';
import 'package:gotodo/presentation/pages/statistics_page/widgets/statistics_toggle_tab.dart';

@RoutePage()
class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const tempList = [
      CategoryProgressTile(),
      CategoryProgressTile(),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const StatisticsAppBar(),
            kHeight,
            const StatisticsToggleTab(),
            kHeight,
            const StatisticsOverview(),
            kHeight,
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemBuilder: (context, index) => tempList[index],
                separatorBuilder: (context, index) =>
                    const Divider(thickness: 1),
                itemCount: tempList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
