import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/globals.dart';
import 'package:gotodo/presentation/widgets/snackbar_body.dart';

extension ShowSnackBar on BuildContext {
  void showSnackBar({
    required String message,
    Color indicatorColor = primaryColor,
    Color iconColor = primaryColor,
    IconData icon = Icons.info,
  }) {
    scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
      content: SnackBarBody(
        message: message,
        indicatorColor: indicatorColor,
        iconColor: iconColor,
        icon: icon,
      ),
      backgroundColor: secondaryDarkColor,
      padding: EdgeInsets.zero,
      duration: const Duration(seconds: 3),
    ));
  }

  void showSnackBarOnContext({
    required String message,
    Color indicatorColor = primaryColor,
    Color iconColor = primaryColor,
    IconData icon = Icons.info,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: SnackBarBody(
        message: message,
        indicatorColor: indicatorColor,
        iconColor: iconColor,
        icon: icon,
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

  void showErrorSnackBarOnContext({required String message}) {
    showSnackBar(
      message: message,
      indicatorColor: Colors.red,
      iconColor: Colors.red,
      icon: Icons.warning,
    );
  }
}
