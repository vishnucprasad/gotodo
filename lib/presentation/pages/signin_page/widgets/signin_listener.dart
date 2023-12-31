import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/auth/auth_bloc.dart';
import 'package:gotodo/application/auth/signin/signin_bloc.dart';
import 'package:gotodo/presentation/extension/snackbar_extension.dart';
import 'package:gotodo/presentation/pages/signin_page/widgets/signin_body.dart';

class SigninListener extends StatelessWidget {
  const SigninListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SigninBloc, SigninState>(
      listenWhen: (p, c) =>
          p.failureOrSuccessOption != c.failureOrSuccessOption,
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () => null,
          (some) => some.fold(
            (f) => f.maybeMap(
              clientFailure: (e) => context.showErrorSnackBar(message: e.msg),
              serverFailure: (e) => context.showErrorSnackBar(message: e.msg),
              orElse: () => null,
            ),
            (_) {
              context.read<SigninBloc>().add(const SigninEvent.saveTokens());
              context.read<AuthBloc>().add(
                    const AuthEvent.authCheckRequested(),
                  );
            },
          ),
        );
      },
      child: const SigninBody(),
    );
  }
}
