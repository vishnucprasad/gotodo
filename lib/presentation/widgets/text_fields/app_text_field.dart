import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.onChanged,
    required this.hintText,
    this.validator,
    this.controller,
    this.obscureText = false,
    this.autoValidateMode,
    this.suffixIcon,
    super.key,
  });

  final void Function(String)? onChanged;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool obscureText;
  final AutovalidateMode? autoValidateMode;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    return TextFormField(
      controller: controller,
      cursorColor: isDarkMode ? lightColor : darkColor,
      obscureText: obscureText,
      autovalidateMode: autoValidateMode,
      decoration: InputDecoration(
        filled: true,
        border: kTextFormFieldBorder,
        focusedBorder: kTextFormFieldBorder,
        enabledBorder: kTextFormFieldBorder,
        errorBorder: kTextFormFieldBorder,
        errorMaxLines: 2,
        fillColor: isDarkMode
            ? darkGreyColor.withOpacity(0.15)
            : lightGreyColor.withOpacity(0.1),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: lightGreyColor,
        ),
        suffixIcon: suffixIcon,
      ),
      style: TextStyle(
        color: isDarkMode ? lightColor : darkColor,
      ),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
