import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';

class SnackBarBody extends StatelessWidget {
  const SnackBarBody({
    super.key,
    required this.message,
    required this.indicatorColor,
    required this.iconColor,
    required this.icon,
  });

  final String message;
  final Color indicatorColor;
  final Color iconColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 40,
          color: indicatorColor,
        ),
        kWidthMedium,
        Icon(
          icon,
          color: iconColor,
        ),
        kWidthMedium,
        Text(
          message,
          style: const TextStyle(color: lightColor),
        ),
      ],
    );
  }
}
