import 'package:flutter/material.dart';
import 'package:gotodo/presentation/router/app_router.dart';
import 'package:gotodo/presentation/theme/app_theme.dart';

class GotodoApp extends StatelessWidget {
  GotodoApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: buildLightTheme(),
      darkTheme: buildDarkTheme(),
      routerConfig: _appRouter.config(),
    );
  }
}
