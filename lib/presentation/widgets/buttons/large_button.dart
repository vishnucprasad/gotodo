import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';

class LargeButton extends StatelessWidget {
  const LargeButton({
    required this.text,
    required this.onPressesd,
    required this.isLoading,
    required this.loadingText,
    Key? key,
  }) : super(key: key);

  final String text;
  final bool isLoading;
  final String loadingText;
  final void Function()? onPressesd;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressesd,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
          foregroundColor: MaterialStateProperty.all<Color>(lightColor),
        ),
        child: isLoading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    loadingText,
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Avenir Black',
                    ),
                  ),
                  kWidth,
                  const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      color: primaryColor,
                      backgroundColor: lightColor,
                    ),
                  ),
                ],
              )
            : Text(
                text,
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'Avenir Black',
                ),
              ),
      ),
    );
  }
}
