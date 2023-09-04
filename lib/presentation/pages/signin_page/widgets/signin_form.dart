import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/pages/signin_page/widgets/email_input.dart';
import 'package:gotodo/presentation/pages/signin_page/widgets/password_input.dart';
import 'package:gotodo/presentation/pages/signin_page/widgets/signin_button.dart';

class SigninForm extends StatelessWidget {
  const SigninForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle? headLineText = Theme.of(context).textTheme.headlineMedium;

    return Form(
      child: Column(
        children: [
          Text(
            'Signin',
            style: headLineText?.copyWith(
              fontWeight: FontWeight.w900,
            ),
          ),
          kHeightLarge,
          const EmailInput(),
          kHeightMedium,
          const PasswordInput(),
          kHeightMedium,
          const SigninButton(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account ?"),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Signup',
                  style: TextStyle(color: primaryColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
