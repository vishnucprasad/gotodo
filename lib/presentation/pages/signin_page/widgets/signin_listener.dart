import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/auth/signin/signin_bloc.dart';
import 'package:gotodo/presentation/core/strings.dart';
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
      child: const SigninBody(),
    );
  }
}
