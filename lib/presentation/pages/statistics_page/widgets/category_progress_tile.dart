import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';

class CategoryProgressTile extends StatelessWidget {
  const CategoryProgressTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return ListTile(
      leading: Icon(
        Icons.label,
        color: Colors.yellow[800],
        size: 28,
      ),
      title: const Text(
        'Work',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '24 / ',
                  style: TextStyle(
                    fontSize: 18,
                    color: isDarkMode ? lightColor : darkColor,
                  ),
                ),
                const TextSpan(
                  text: '30',
                  style: TextStyle(
                    color: lightGreyColor,
                  ),
                )
              ],
            ),
          ),
          kWidthLarge,
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '80 ',
                  style: TextStyle(
                    fontSize: 18,
                    color: isDarkMode ? lightColor : darkColor,
                  ),
                ),
                const TextSpan(
                  text: '%',
                  style: TextStyle(
                    color: lightGreyColor,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
