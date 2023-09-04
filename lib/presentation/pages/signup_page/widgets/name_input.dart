import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/auth/signup/signup_bloc.dart';
import 'package:gotodo/presentation/widgets/text_fields/app_text_field.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class NameInput extends HookWidget {
  const NameInput({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocConsumer<SignupBloc, SignupState>(
      listenWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
      listener: (context, state) {
        controller.text = state.credentials.name.value.getOrElse(() => "");
      },
      buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) {
        return AppTextField(
          controller: controller,
          autoValidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          hintText: 'Name',
          onChanged: (value) => context.read<SignupBloc>().add(
                SignupEvent.nameChanged(value),
              ),
          validator: (_) =>
              context.read<SignupBloc>().state.credentials.name.value.fold(
                    (l) => l.maybeMap(
                      empty: (_) => "Name can't be empty",
                      invalid: (_) =>
                          "Name must be between 3 and 20 characters long and can only contain letters and spaces.",
                      orElse: () => null,
                    ),
                    (r) => null,
                  ),
        );
      },
    );
  }
}
