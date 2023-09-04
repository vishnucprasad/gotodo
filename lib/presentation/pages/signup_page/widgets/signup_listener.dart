import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/auth/signup/signup_bloc.dart';
import 'package:gotodo/presentation/core/strings.dart';
import 'package:gotodo/presentation/extension/snackbar_extension.dart';
import 'package:gotodo/presentation/pages/signup_page/widgets/signup_body.dart';

class SignupListener extends StatelessWidget {
  const SignupListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupBloc, SignupState>(
      listenWhen: (p, c) =>
          p.failureOrSuccessOption != c.failureOrSuccessOption,
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () => null,
          (some) => some.fold(
            (f) => context.showErrorSnackBar(
              message: f.map(
                clientFailure: (e) => e.msg,
                serverFailure: (_) => AppStr.serverFailure,
              ),
            ),
            (_) {},
          ),
        );
      },
      child: const SignupBody(),
    );
  }
}