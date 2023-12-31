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
    this.filled = true,
    this.maxLines = 1,
    this.initialValue,
    super.key,
  });

  final void Function(String)? onChanged;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool obscureText;
  final AutovalidateMode? autoValidateMode;
  final Widget? suffixIcon;
  final bool filled;
  final int? maxLines;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    return TextFormField(
      initialValue: initialValue,
      controller: initialValue != null ? controller : null,
      cursorColor: isDarkMode ? lightColor : darkColor,
      obscureText: obscureText,
      maxLines: maxLines,
      autovalidateMode: autoValidateMode,
      decoration: InputDecoration(
        filled: filled,
        border: kTextFormFieldBorder,
        focusedBorder: kTextFormFieldBorder,
        enabledBorder: kTextFormFieldBorder,
        errorBorder: kTextFormFieldBorder,
        errorMaxLines: 3,
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
