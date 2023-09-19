import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/constants.dart';

class SettingsAppBar extends StatelessWidget {
  const SettingsAppBar({
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
          'Settings',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
