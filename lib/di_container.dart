import 'package:app_structure/provider/home_provider.dart';
import 'package:app_structure/utils/network_info.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'constant/app_constants.dart';
import 'data/datasource/remote/dio/dio_client.dart';
import 'data/datasource/remote/dio/logging_interceptor.dart';
import 'data/repository/home_repo.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Core
  sl.registerFactory(() => NetworkInfo(sl()));
  sl.registerFactory(() => DioClient(AppConstants.BASE_URL, sl(),
      loggingInterceptor: sl(), sharedPreferences: sl()));

  // Repository
  sl.registerLazySingleton(() => HomeRepo(dioClient: sl()));


  // Provider
  sl.registerFactory(() => HomeProvider(homeRepo: sl()));


  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerFactory(() => sharedPreferences);
  sl.registerFactory(() => Dio());
  sl.registerFactory(() => LoggingInterceptor());
  sl.registerFactory(() => Connectivity());
}
