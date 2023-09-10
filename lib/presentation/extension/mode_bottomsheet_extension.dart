import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/widgets/buttons/category_dropdown_button.dart';
import 'package:gotodo/presentation/widgets/buttons/form_button.dart';
import 'package:gotodo/presentation/widgets/text_fields/app_text_field.dart';

extension ModelBottomsheetExtension on BuildContext {
  void showCreateTodoBottomsheet() {
    final isDarkMode = Theme.of(this).colorScheme.brightness == Brightness.dark;
    final size = MediaQuery.of(this).size;

    showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
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
                    hintText: 'Write your task',
                  ),
                  kHeightMedium,
                  AppTextField(
                    onChanged: (value) {},
                    hintText: 'Write description',
                    maxLines: 4,
                  ),
                  kHeightMedium,
                  Row(
                    children: [
                      FormButton(
                        icon: Icons.calendar_month,
                        label: 'Today',
                        onPressed: () async {
                          final selectedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime(2100),
                          );

                          print(selectedDate.toString());
                        },
                      ),
                      kWidthMedium,
                      const CategoryDropdownButton(),
                      const Spacer(),
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll<Color>(
                              primaryColor,
                            ),
                            shape: MaterialStatePropertyAll<
                                RoundedRectangleBorder>(
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
          ),
        );
      },
    );
  }
}
