import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/auth/auth_bloc.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/extension/modal_bottomsheet_extension.dart';

class SettingsListView extends StatelessWidget {
  const SettingsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDarkMode ? secondaryDarkColor : secondaryLightColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListView(
        children: [
          Text(
            'Account settings',
            style: textTheme.titleMedium,
          ),
          kHeight,
          Column(
            children: [
              ListTile(
                leading: const Icon(Icons.edit_square),
                title: const Text('Edit profile'),
                onTap: () => context.showEditProfileBottomsheet(),
              ),
              const Divider(
                thickness: 1,
              )
            ],
          ),
          Column(
            children: [
              ListTile(
                leading: const Icon(Icons.lock_reset),
                title: const Text('Change password'),
                onTap: () => context.showchangePasswordBottomsheet(),
              ),
              const Divider(
                thickness: 1,
              )
            ],
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.red,
            ),
            title: const Text(
              'Signout',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            onTap: () =>
                context.read<AuthBloc>().add(const AuthEvent.signout()),
            trailing: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) => state.isLoading
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(),
                    )
                  : const SizedBox.shrink(),
            ),
          ),
        ],
      ),
    );
  }
}
