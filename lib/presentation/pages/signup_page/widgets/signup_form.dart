import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/pages/signup_page/widgets/email_input.dart';
import 'package:gotodo/presentation/pages/signup_page/widgets/name_input.dart';
import 'package:gotodo/presentation/pages/signup_page/widgets/password_input.dart';
import 'package:gotodo/presentation/pages/signup_page/widgets/signup_button.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle? headLineText = Theme.of(context).textTheme.headlineMedium;

    return Form(
      child: Column(
        children: [
          Text(
            'Signup',
            style: headLineText?.copyWith(
              fontWeight: FontWeight.w900,
              color: primaryColor,
            ),
          ),
          kHeightLarge,
          const NameInput(),
          kHeightMedium,
          const EmailInput(),
          kHeightMedium,
          const PasswordInput(),
          kHeightMedium,
          const SignupButton(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an account ?"),
              TextButton(
                onPressed: () {
                  context.popRoute();
                },
                child: const Text(
                  'Signin',
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
