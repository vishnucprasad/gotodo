import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/auth_bloc.dart';
import 'package:gotodo/injection.dart';
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
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: buildLightTheme(),
        darkTheme: buildDarkTheme(),
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
