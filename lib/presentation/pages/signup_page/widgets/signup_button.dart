import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/auth/signup/signup_bloc.dart';
import 'package:gotodo/presentation/widgets/buttons/large_button.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
      builder: (context, state) {
        return LargeButton(
          text: 'Signup',
          onPressesd: () =>
              context.read<SignupBloc>().add(const SignupEvent.signup()),
          isLoading: state.isSigning,
          loadingText: 'Signing up...',
        );
      },
    );
  }
}
