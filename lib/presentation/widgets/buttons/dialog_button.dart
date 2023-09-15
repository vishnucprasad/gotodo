import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';

class DialogButton extends StatelessWidget {
  const DialogButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
    this.foregroundColor,
    this.backgroundColor,
  });

  final IconData icon;
  final String label;
  final void Function()? onPressed;
  final Color? foregroundColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        Theme.of(context).colorScheme.brightness == Brightness.dark;
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(
            foregroundColor != null
                ? foregroundColor!
                : isDarkMode
                    ? lightColor
                    : darkColor,
          ),
          elevation: MaterialStateProperty.all<double>(0),
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide.none,
            ),
          ),
          alignment: Alignment.centerLeft,
          backgroundColor: MaterialStateProperty.all<Color>(
            backgroundColor != null
                ? backgroundColor!
                : isDarkMode
                    ? darkGreyColor.withOpacity(0.15)
                    : lightGreyColor.withOpacity(0.1),
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
