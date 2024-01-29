import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:glofa_customer/model/network_calls/api_helper/repository_helper/drawer_repo.dart';
import 'package:glofa_customer/model/network_calls/api_helper/repository_helper/home_repo.dart';
import 'package:glofa_customer/model/network_calls/api_helper/provider_helper/drawer_provider.dart';
import 'package:glofa_customer/model/network_calls/api_helper/provider_helper/home_provider.dart';



import '../../utils/resource/app_constants.dart';
import '../api_helper/network_info.dart';
import '../api_helper/provider_helper/auth_provider.dart';
import '../api_helper/repository_helper/auth_repo.dart';
import 'dio_client.dart';
import 'logging_interceptor.dart';


GetIt getIt = GetIt.instance;

Future<void> getInit() async {
  /// Core
  getIt.registerLazySingleton(() => NetworkInfo(getIt()));
  getIt.registerLazySingleton(() => DioClient(AppConstants.baseUrl, getIt(), loggingInterceptor: getIt(),));

  /// External
  getIt.registerLazySingleton(() => Dio());
  getIt.registerLazySingleton(() => LoggingInterceptor());
  getIt.registerLazySingleton(() => Connectivity());

  /// Repository
  getIt.registerLazySingleton(() => AuthRepo(dioClient: getIt(),));
  getIt.registerLazySingleton(() => DrawerRepo(dioClient: getIt(),));
  getIt.registerLazySingleton(() => HomeRepo(dioClient: getIt(),));






  /// Provider
  getIt.registerFactory(() => AuthProvider(authRepo: getIt()));
  getIt.registerFactory(() => DrawerProvider(drawerRepo: getIt()));
  getIt.registerFactory(() => HomeProvider(homeRepo: getIt()));





}