import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gotodo/application/auth/signup/signup_bloc.dart';
import 'package:gotodo/presentation/widgets/text_fields/app_text_field.dart';

class PasswordInput extends HookWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return BlocConsumer<SignupBloc, SignupState>(
      listenWhen: (p, c) => p.isUpdating != c.isUpdating,
      listener: (context, state) {
        controller.text = state.credentials.password.value.getOrElse(() => "");
      },
      buildWhen: (p, c) =>
          p.hidePassword != c.hidePassword ||
          p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) {
        return AppTextField(
          controller: controller,
          hintText: 'Password',
          autoValidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          obscureText: state.hidePassword,
          suffixIcon: IconButton(
            onPressed: () => context
                .read<SignupBloc>()
                .add(const SignupEvent.obscureTextChanged()),
            splashRadius: 20,
            icon: Icon(
              state.hidePassword
                  ? Icons.remove_red_eye
                  : Icons.remove_red_eye_outlined,
              color: Theme.of(context).primaryColor,
            ),
          ),
          onChanged: (value) => context.read<SignupBloc>().add(
                SignupEvent.passwordChanged(value),
              ),
          validator: (_) =>
              context.read<SignupBloc>().state.credentials.password.value.fold(
                    (l) => l.maybeMap(
                      empty: (_) => "Password can't be empty",
                      invalid: (_) =>
                          "Password must be minimum six characters, at least one uppercase letter, one lowercase letter, one number and one special character",
                      orElse: () => "some",
                    ),
                    (r) => null,
                  ),
        );
      },
    );
  }
}
