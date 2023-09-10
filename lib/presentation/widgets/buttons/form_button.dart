import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';

class FormButton extends StatelessWidget {
  const FormButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  final IconData icon;
  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        Theme.of(context).colorScheme.brightness == Brightness.dark;

    return SizedBox(
      height: 60,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(label),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(
            isDarkMode ? lightColor : darkColor,
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
            isDarkMode
                ? darkGreyColor.withOpacity(0.15)
                : lightGreyColor.withOpacity(0.1),
          ),
        ),
      ),
    );
  }
}
