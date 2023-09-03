import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/widgets/buttons/large_button.dart';
import 'package:gotodo/presentation/widgets/text_fields/app_text_field.dart';

@RoutePage()
class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height / 1.75,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/gotodo.png"),
                ),
              ),
            ),
            Container(
              height: size.height - size.height / 1.75,
              padding: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                color: secondaryDarkColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(48),
                  topRight: Radius.circular(48),
                ),
              ),
              child: const SigninForm(),
            )
          ],
        ),
      ),
    );
  }
}

class SigninForm extends StatelessWidget {
  const SigninForm({
    super.key,
  });

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
          AppTextField(
            onChanged: (value) {},
            hintText: 'Email',
          ),
          kHeightMedium,
          AppTextField(
            onChanged: (value) {},
            hintText: 'Password',
            obscureText: true,
          ),
          kHeightMedium,
          LargeButton(
            text: 'Signin',
            onPressesd: () {},
            isLoading: false,
            loadingText: 'Signing in...',
          ),
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
