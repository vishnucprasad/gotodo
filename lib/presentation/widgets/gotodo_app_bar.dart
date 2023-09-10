import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';

class GotodoAppBar extends StatelessWidget {
  const GotodoAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        Theme.of(context).colorScheme.brightness == Brightness.dark;

    return Row(
      children: [
        kWidth,
        Container(
          height: 75,
          width: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/gotodo.png'),
            ),
          ),
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor:
              isDarkMode ? secondaryDarkColor : secondaryLightColor,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
        ),
        kWidth,
      ],
    );
  }
}
