import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/auth/signup/signup_bloc.dart';
import 'package:gotodo/presentation/widgets/text_fields/app_text_field.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EmailInput extends HookWidget {
  const EmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocConsumer<SignupBloc, SignupState>(
      listenWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
      listener: (context, state) {
        controller.text =
            state.credentials.emailAddress.value.getOrElse(() => "");
      },
      buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) {
        return AppTextField(
          controller: controller,
          autoValidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          hintText: 'Email',
          onChanged: (value) => context.read<SignupBloc>().add(
                SignupEvent.emailAddressChanged(value),
              ),
          validator: (_) => context
              .read<SignupBloc>()
              .state
              .credentials
              .emailAddress
              .value
              .fold(
                (l) => l.maybeMap(
                  empty: (_) => "Email address can't be empty",
                  invalid: (_) => "Invalid email address",
                  orElse: () => null,
                ),
                (r) => null,
              ),
        );
      },
    );
  }
}
