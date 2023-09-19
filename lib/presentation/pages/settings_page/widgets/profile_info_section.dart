import 'package:flutter/material.dart';
import 'package:gotodo/domain/auth/user.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';

class ProfileInfoSection extends StatelessWidget {
  const ProfileInfoSection({
    required this.user,
    super.key,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        CircleAvatar(
          radius: 42,
          backgroundColor:
              isDarkMode ? secondaryDarkColor : secondaryLightColor,
          child: Icon(
            Icons.person,
            color: isDarkMode ? lightColor : darkColor,
            size: 56,
          ),
        ),
        kHeightSmall,
        Text(
          user.name,
          style: textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeightSmall,
        Text(
          user.email,
          style: textTheme.titleLarge,
        ),
      ],
    );
  }
}
