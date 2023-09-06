import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/core/globals.dart';

extension ShowSnackBar on BuildContext {
  void showSnackBar({
    required String message,
    Color indicatorColor = primaryColor,
    Color iconColor = primaryColor,
    IconData icon = Icons.info,
  }) {
    scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
      content: Row(
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
      ),
      backgroundColor: secondaryDarkColor,
      padding: EdgeInsets.zero,
      duration: const Duration(seconds: 3),
    ));
  }

  void showErrorSnackBar({required String message}) {
    showSnackBar(
      message: message,
      indicatorColor: Colors.red,
      iconColor: Colors.red,
      icon: Icons.warning,
    );
  }
}
