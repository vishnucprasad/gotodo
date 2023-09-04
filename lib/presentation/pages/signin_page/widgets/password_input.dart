import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gotodo/application/auth/signin/signin_bloc.dart';
import 'package:gotodo/presentation/widgets/text_fields/app_text_field.dart';

class PasswordInput extends HookWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return BlocConsumer<SigninBloc, SigninState>(
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
                .read<SigninBloc>()
                .add(const SigninEvent.obscureTextChanged()),
            splashRadius: 20,
            icon: Icon(
              state.hidePassword
                  ? Icons.remove_red_eye
                  : Icons.remove_red_eye_outlined,
              color: Theme.of(context).primaryColor,
            ),
          ),
          onChanged: (value) => context.read<SigninBloc>().add(
                SigninEvent.passwordChanged(value),
              ),
          validator: (_) =>
              context.read<SigninBloc>().state.credentials.password.value.fold(
                    (l) => l.maybeMap(
                      empty: (_) => "Password can't be empty",
                      invalid: (_) =>
                          "Password must be minimum six characters, at least one letter and one number",
                      orElse: () => "some",
                    ),
                    (r) => null,
                  ),
        );
      },
    );
  }
}
