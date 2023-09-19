import 'package:flutter/material.dart';
import 'package:gotodo/injection.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SettingsVersionSection extends StatelessWidget {
  const SettingsVersionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidthLarge,
        const Text('Version'),
        const Spacer(),
        Text(getIt<PackageInfo>().version),
        kWidthLarge,
      ],
    );
  }
}
