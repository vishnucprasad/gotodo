import 'package:flutter/material.dart';
import 'package:gotodo/presentation/gotodo_app.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  Paint.enableDithering = true;
  runApp(GotodoApp());
}
