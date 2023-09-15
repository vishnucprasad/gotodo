import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/extension/dialog_extension.dart';
import 'package:gotodo/presentation/extension/hex_color.extension.dart';
import 'package:gotodo/presentation/widgets/buttons/form_button.dart';
import 'package:gotodo/presentation/widgets/text_fields/app_text_field.dart';

class CreateCategoryBottomsheet extends StatelessWidget {
  const CreateCategoryBottomsheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        Theme.of(context).colorScheme.brightness == Brightness.dark;
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        decoration: BoxDecoration(
          color: isDarkMode ? secondaryDarkColor : secondaryLightColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(26),
            topRight: Radius.circular(26),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(
              thickness: 5,
              indent: size.width / 2.75,
              endIndent: size.width / 2.75,
            ),
            kHeightMedium,
            AppTextField(
              onChanged: (value) {},
              hintText: 'Write category name',
            ),
            kHeightMedium,
            Row(
              children: [
                FormButton(
                  icon: Icons.color_lens,
                  label: '#ffffff',
                  onPressed: () {
                    context.showColorpickerDialog(
                      onColorChanged: (Color color) {
                        print(
                          color.toHex(),
                        );
                      },
                    );
                  },
                ),
                const Spacer(),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll<Color>(
                        primaryColor,
                      ),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Icon(
                      Icons.send,
                      size: 24,
                      color: lightColor,
                    ),
                  ),
                ),
              ],
            ),
            kHeight,
          ],
        ),
      ),
    );
  }
}
