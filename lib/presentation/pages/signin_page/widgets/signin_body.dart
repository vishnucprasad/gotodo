import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/pages/signin_page/widgets/signin_form.dart';

class SigninBody extends StatelessWidget {
  const SigninBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height / 2,
              width: size.width - size.width / 3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/gotodo.png"),
                ),
              ),
            ),
            Container(
              height: size.height / 2,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: isDarkMode ? secondaryDarkColor : secondaryLightColor,
                borderRadius: const BorderRadius.only(
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
