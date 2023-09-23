import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/auth/auth_bloc.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/pages/settings_page/widgets/profile_info_section.dart';
import 'package:gotodo/presentation/pages/settings_page/widgets/settings_app_bar.dart';
import 'package:gotodo/presentation/pages/settings_page/widgets/settings_list_view.dart';
import 'package:gotodo/presentation/pages/settings_page/widgets/settings_version_section.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return Column(
              children: [
                const SettingsAppBar(),
                kHeight,
                ProfileInfoSection(user: state.user),
                kHeightMedium,
                const Expanded(
                  child: SettingsListView(),
                ),
                kHeightSmall,
                const SettingsVersionSection(),
                kHeightMedium,
              ],
            );
          },
        ),
      ),
    );
  }
}
