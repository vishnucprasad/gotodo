import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gotodo/application/auth/auth_bloc.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/widgets/buttons/large_button.dart';
import 'package:gotodo/presentation/widgets/text_fields/app_text_field.dart';

class EditProfileBottomsheet extends HookWidget {
  const EditProfileBottomsheet({
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
          state.mapOrNull(authenticated: (state) {
            state.failureOrSuccessOption?.map(
              (a) => a.map((r) => Navigator.pop(context)),
            );
          });
        },
        builder: (context, state) {
          return state.maybeMap(
            authenticated: (state) {
              return DraggableScrollableSheet(
                initialChildSize: 0.35,
                minChildSize: 0.35,
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
                      color:
                          isDarkMode ? secondaryDarkColor : secondaryLightColor,
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
                          hintText: 'Name',
                          initialValue: state.user.name,
                          autoValidateMode: state.showValidationError == true
                              ? AutovalidateMode.always
                              : AutovalidateMode.disabled,
                          onChanged: (value) => context
                              .read<AuthBloc>()
                              .add(AuthEvent.nameChanged(value)),
                          validator: (_) => state.credentials?.name.value.fold(
                            (l) => l.maybeMap(
                              empty: (_) => "Name can't be empty",
                              invalid: (_) =>
                                  "Name must be between 3 and 20 characters long and can only contain letters and spaces.",
                              orElse: () => null,
                            ),
                            (r) => null,
                          ),
                        ),
                        kHeightMedium,
                        AppTextField(
                          hintText: 'Email',
                          initialValue: state.user.email,
                          autoValidateMode: state.showValidationError == true
                              ? AutovalidateMode.always
                              : AutovalidateMode.disabled,
                          onChanged: (value) => context
                              .read<AuthBloc>()
                              .add(AuthEvent.emailAddressChanged(value)),
                          validator: (_) =>
                              state.credentials?.emailAddress.value.fold(
                            (l) => l.maybeMap(
                              empty: (_) => "Email address can't be empty",
                              invalid: (_) => "Invalid email address",
                              orElse: () => null,
                            ),
                            (r) => null,
                          ),
                        ),
                        kHeightMedium,
                        LargeButton(
                          text: 'Save',
                          onPressesd: () => context
                              .read<AuthBloc>()
                              .add(const AuthEvent.editUser()),
                          isLoading: state.isLoading == true,
                          loadingText: 'Saving...',
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            orElse: () => const Center(child: Text('Unauthorized')),
          );
        },
      ),
    );
  }
}
