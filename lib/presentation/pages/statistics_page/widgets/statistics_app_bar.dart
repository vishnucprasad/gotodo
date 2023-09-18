import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/constants.dart';

class StatisticsAppBar extends StatelessWidget {
  const StatisticsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
