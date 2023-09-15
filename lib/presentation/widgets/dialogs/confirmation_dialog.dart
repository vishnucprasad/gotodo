import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/widgets/buttons/dialog_button.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({
    super.key,
    required this.title,
    required this.icon,
    required this.onConfirm,
  });

  final String title;
  final IconData icon;
  final void Function()? onConfirm;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      child: AlertDialog(
        backgroundColor: isDarkMode ? secondaryDarkColor : secondaryLightColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: darkGreyColor.withOpacity(0.5),
            width: 0.5,
          ),
        ),
        insetPadding: const EdgeInsets.all(16),
        title: Row(
          children: [
            Icon(icon),
            kWidthMedium,
            Text(
              'Alert!',
              style: textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        content: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Text(title),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DialogButton(
                  icon: Icons.cancel,
                  label: 'Cancel',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                kWidthMedium,
                DialogButton(
                  icon: Icons.check,
                  label: 'YES',
                  onPressed: onConfirm,
                  foregroundColor: lightColor,
                  backgroundColor: primaryColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
