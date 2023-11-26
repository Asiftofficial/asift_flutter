import 'package:asift_flutter/data/repositories/asift_repository_impl.dart';
import 'package:asift_flutter/data/sources/asift_remote_data_source.dart';
import 'package:asift_flutter/domain/repositories/asift_repository.dart';
import 'package:asift_flutter/domain/usecases/login/login_usecase.dart';
import 'package:asift_flutter/presentation/bloc/login/login_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final locator = GetIt.instance;

void init() {
  // bloc
  locator.registerFactory(
    () => LoginBloc(
      locator(),
    ),
  );
  // locator.registerFactory(
  //   () => TrafficBloc(
  //     getTrafficUseCase: locator(),
  //   ),
  // );

  // use case
  locator.registerLazySingleton(() => LoginUseCase(locator()));
  //locator.registerLazySingleton(() => GetTrafficUseCase(locator()));

  // repository
  locator.registerLazySingleton<AsiftRepository>(
    () => AsiftRepositoryImpl(
      remoteDataSource: locator(),
    ),
  );

  // data sources
  locator.registerLazySingleton<AsiftRemoteDataSource>(
      () => AsiftRemoteDataSourceImpl(client: locator()));

  // external
  //locator.registerLazySingleton(() => HttpSSLPinning.client);
  locator.registerLazySingleton(() => http.Client());
}
