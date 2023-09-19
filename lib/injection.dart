import 'package:get_it/get_it.dart';
import 'package:gotodo/domain/core/constants.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection(String env) async {
  final packageInfo = await PackageInfo.fromPlatform();
  final sharedPrefrences = await SharedPreferences.getInstance();
  final baseOptions = BaseOptions(
    baseUrl: kApiBaseUrl,
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  );

  getIt.registerSingleton<PackageInfo>(packageInfo);
  getIt.registerSingleton<SharedPreferences>(sharedPrefrences);
  getIt.registerLazySingleton<Dio>(() => Dio(baseOptions));
  getIt.init(environment: env);
}
