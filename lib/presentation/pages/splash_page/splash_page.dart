import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/auth_bloc.dart';
import 'package:gotodo/presentation/router/app_router.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) => context.replaceRoute(const HomeRoute()),
          unAuthenticated: (_) => context.replaceRoute(const SigninRoute()),
        );
      },
      child: Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/gotodo.png"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
