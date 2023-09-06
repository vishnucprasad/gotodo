import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/auth_bloc.dart';
import 'package:gotodo/injection.dart';
import 'package:gotodo/presentation/core/globals.dart';
import 'package:gotodo/presentation/extension/snackbar_extension.dart';
import 'package:gotodo/presentation/router/app_router.dart';
import 'package:gotodo/presentation/theme/app_theme.dart';

class GotodoApp extends StatelessWidget {
  GotodoApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        )
      ],
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
            initial: (_) {},
            authenticated: (_) => _appRouter.replace(const HomeRoute()),
            unAuthenticated: (_) => _appRouter.replace(const SigninRoute()),
            errorState: (e) => context.showErrorSnackBar(
              message: e.errorMessage,
            ),
          );
        },
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: buildLightTheme(),
          darkTheme: buildDarkTheme(),
          scaffoldMessengerKey: scaffoldMessengerKey,
          routerConfig: _appRouter.config(),
        ),
      ),
    );
  }
}
