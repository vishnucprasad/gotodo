import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';

class DialogButton extends StatelessWidget {
  const DialogButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.foregroundColor,
    this.backgroundColor,
  });

  final String label;
  final void Function()? onPressed;
  final Color? foregroundColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        Theme.of(context).colorScheme.brightness == Brightness.dark;
    final textTheme = Theme.of(context).textTheme;

    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          backgroundColor != null
              ? backgroundColor!
              : isDarkMode
                  ? darkGreyColor.withOpacity(0.15)
                  : lightGreyColor.withOpacity(0.1),
        ),
        elevation: MaterialStateProperty.all<double>(0),
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide.none,
          ),
        ),
        alignment: Alignment.centerLeft,
      ),
      child: Center(
        child: Text(
          label,
          style: textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: foregroundColor ?? textTheme.titleMedium?.color,
          ),
        ),
      ),
    );
  }
}
