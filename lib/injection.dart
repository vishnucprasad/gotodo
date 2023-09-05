import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection(String env) async {
  final sharedPrefrences = await SharedPreferences.getInstance();
  final baseOptions = BaseOptions(baseUrl: 'http://10.0.2.2:3000');

  getIt.registerSingleton<SharedPreferences>(sharedPrefrences);
  getIt.registerLazySingleton<Dio>(() => Dio(baseOptions));
  getIt.init(environment: env);
}
