import 'package:flutter/material.dart';
import 'package:gotodo/injectable.dart';
import 'package:gotodo/presentation/gotodo_app.dart';
import 'package:injectable/injectable.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  Paint.enableDithering = true;
  await configureInjection(Environment.prod);
  runApp(GotodoApp());
}
