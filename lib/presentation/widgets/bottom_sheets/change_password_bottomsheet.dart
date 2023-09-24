import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gotodo/application/auth/auth_bloc.dart';
import 'package:gotodo/domain/auth/passwords.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/widgets/buttons/large_button.dart';
import 'package:gotodo/presentation/widgets/text_fields/app_text_field.dart';

class ChangePassewordBottomsheet extends HookWidget {
  const ChangePassewordBottomsheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.failureOrSuccessOption?.map(
            (a) => a.map((r) {
              if (state.passwords == Passwords.empty()) {
                Navigator.pop(context);
              }
            }),
          );
        },
        builder: (context, state) {
          return DraggableScrollableSheet(
            initialChildSize: 0.4,
            minChildSize: 0.4,
            maxChildSize: 0.75,
            builder: (context, scrollController) => Container(
              width: double.infinity,
              color: Colors.transparent,
              child: Container(
                padding: EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                decoration: BoxDecoration(
                  color: isDarkMode ? secondaryDarkColor : secondaryLightColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(26),
                    topRight: Radius.circular(26),
                  ),
                ),
                child: ListView(
                  controller: scrollController,
                  children: [
                    Divider(
                      thickness: 5,
                      indent: size.width / 2.75,
                      endIndent: size.width / 2.75,
                    ),
                    kHeightMedium,
                    AppTextField(
                      hintText: 'Current Password',
                      obscureText: state.hideCurrentPassword,
                      autoValidateMode: state.showValidationError == true
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      suffixIcon: IconButton(
                        onPressed: () {
                          context.read<AuthBloc>().add(const AuthEvent
                              .currentPasswordVisibiltyChanged());
                        },
                        icon: Icon(
                          state.hideCurrentPassword
                              ? Icons.remove_red_eye
                              : Icons.remove_red_eye_outlined,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      onChanged: (value) => context
                          .read<AuthBloc>()
                          .add(AuthEvent.currentPasswordChanged(value)),
                      validator: (_) =>
                          state.passwords.currentPassword.value.fold(
                        (l) => l.maybeMap(
                          empty: (_) => "Current password can't be empty",
                          invalid: (_) =>
                              "Password must be minimum six characters, at least one uppercase letter, one lowercase letter, one number and one special character",
                          orElse: () => "some",
                        ),
                        (r) => null,
                      ),
                    ),
                    kHeightMedium,
                    AppTextField(
                      hintText: 'New Password',
                      obscureText: state.hideNewPassword,
                      autoValidateMode: state.showValidationError == true
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      suffixIcon: IconButton(
                        onPressed: () {
                          context.read<AuthBloc>().add(
                              const AuthEvent.newPasswordVisibiltyChanged());
                        },
                        icon: Icon(
                          state.hideNewPassword
                              ? Icons.remove_red_eye
                              : Icons.remove_red_eye_outlined,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      onChanged: (value) => context
                          .read<AuthBloc>()
                          .add(AuthEvent.newPasswordChanged(value)),
                      validator: (_) => state.passwords.newPassword.value.fold(
                        (l) => l.maybeMap(
                          empty: (_) => "New password can't be empty",
                          invalid: (_) =>
                              "Password must be minimum six characters, at least one uppercase letter, one lowercase letter, one number and one special character",
                          orElse: () => "some",
                        ),
                        (r) => null,
                      ),
                    ),
                    kHeightMedium,
                    AppTextField(
                      hintText: 'Confirm Password',
                      obscureText: state.hideConfirmationPassword,
                      autoValidateMode: state.showValidationError == true
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      suffixIcon: IconButton(
                        onPressed: () {
                          context.read<AuthBloc>().add(const AuthEvent
                              .confirmationPasswordVisibiltyChanged());
                        },
                        icon: Icon(
                          state.hideConfirmationPassword
                              ? Icons.remove_red_eye
                              : Icons.remove_red_eye_outlined,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      onChanged: (value) => context
                          .read<AuthBloc>()
                          .add(AuthEvent.confirmationPasswordChanged(value)),
                      validator: (_) =>
                          state.passwords.confirmationPassword.value.fold(
                        (l) => l.maybeMap(
                          empty: (_) => "Confirm password can't be empty",
                          invalid: (_) => "Passwords does't match",
                          orElse: () => "some",
                        ),
                        (r) => null,
                      ),
                    ),
                    kHeightMedium,
                    LargeButton(
                      text: 'Change',
                      onPressesd: () => context
                          .read<AuthBloc>()
                          .add(const AuthEvent.changePassword()),
                      isLoading: state.isLoading == true,
                      loadingText: 'Changing...',
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
