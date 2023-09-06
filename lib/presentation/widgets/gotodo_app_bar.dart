import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/constants.dart';

class GotodoAppBar extends StatelessWidget {
  const GotodoAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person),
        ),
        kWidth,
      ],
    );
  }
}
