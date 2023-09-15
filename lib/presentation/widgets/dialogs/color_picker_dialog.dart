import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/widgets/buttons/large_button.dart';

class ColorPickerDialog extends StatelessWidget {
  const ColorPickerDialog({
    super.key,
    required this.onColorChanged,
  });

  final void Function(Color) onColorChanged;

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
        title: Text(
          'Pick a color',
          style: textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        content: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: HueRingPicker(
              pickerColor: primaryColor,
              onColorChanged: onColorChanged,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 16,
            ),
            child: LargeButton(
              text: 'Done',
              onPressesd: () {
                context.router.pop();
              },
              isLoading: false,
              loadingText: '',
            ),
          )
        ],
      ),
    );
  }
}
