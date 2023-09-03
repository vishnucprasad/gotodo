import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.onChanged,
    required this.hintText,
    this.obscureText = false,
    super.key,
  });

  final void Function(String)? onChanged;
  final String? hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: lightColor,
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        border: kTextFormFieldBorder,
        focusedBorder: kTextFormFieldBorder,
        enabledBorder: kTextFormFieldBorder,
        errorBorder: kTextFormFieldBorder,
        fillColor: darkGreyColor.withOpacity(0.15),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: lightGreyColor,
        ),
      ),
      style: const TextStyle(
        color: lightColor,
      ),
      onChanged: onChanged,
    );
  }
}
