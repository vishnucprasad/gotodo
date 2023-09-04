import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/auth/signin/signin_bloc.dart';
import 'package:gotodo/presentation/widgets/buttons/large_button.dart';

class SigninButton extends StatelessWidget {
  const SigninButton({super.key});

  @override
  Widget build(BuildContext context) {
    return LargeButton(
      text: 'Signin',
      onPressesd: () =>
          context.read<SigninBloc>().add(const SigninEvent.signin()),
      isLoading: false,
      loadingText: 'Signing in...',
    );
  }
}
