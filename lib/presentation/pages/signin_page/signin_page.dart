import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/auth/signin/signin_bloc.dart';
import 'package:gotodo/injectable.dart';
import 'package:gotodo/presentation/pages/signin_page/widgets/signin_listener.dart';

@RoutePage()
class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SigninBloc>(),
      child: const SigninListener(),
    );
  }
}
