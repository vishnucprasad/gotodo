import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/app/app_bloc.dart';
import 'package:gotodo/application/auth/auth_bloc.dart';
import 'package:gotodo/application/todo/todo_bloc.dart';
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
        ),
        BlocProvider(
          create: (context) => getIt<AppBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<TodoBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.map(
                initial: (_) {},
                authenticated: (_) {
                  context.read<AppBloc>().add(const AppEvent.getDateList());
                  _appRouter.replaceAll([const HomeRoute()]);
                },
                unAuthenticated: (_) =>
                    _appRouter.replaceAll([const SigninRoute()]),
                errorState: (e) => context.showErrorSnackBar(
                  message: e.errorMessage,
                ),
              );
            },
          ),
          BlocListener<AppBloc, AppState>(
            listenWhen: (p, c) =>
                p.dateList != c.dateList && c.dateList.length == 7,
            listener: (context, state) => context
                .read<TodoBloc>()
                .add(TodoEvent.getTodoList(state.dateList)),
          ),
        ],
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
