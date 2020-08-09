// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:http/http.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'data/forecast/data_source/c_forecast_remote_data_source.dart';
import 'domain/forecast/repository/c_forecast_repository.dart';
import 'core/network/network_info.dart';
import 'data/forecast/data_source/forecast_remote_data_source.dart';
import 'data/forecast/repository/forecast_repository.dart';
import 'domain/forecast/transformer/forecast_transformer.dart';
import 'domain/forecast/use_case/get_forecasts.dart';
import 'di.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final thirdPartyModule = _$ThirdPartyModule();
  gh.lazySingleton<Client>(() => thirdPartyModule.httpClient);
  gh.lazySingleton<DataConnectionChecker>(
      () => thirdPartyModule.dataConnectionChecker);
  gh.lazySingleton<ForecastTransformer>(() => ForecastTransformer());
  gh.lazySingleton<CForecastRemoteDataSource>(
      () => ForecastRemoteDataSource(client: get<Client>()));
  gh.lazySingleton<CNetworkInfo>(
      () => NetworkInfo(get<DataConnectionChecker>()));
  gh.lazySingleton<CForecastRepository>(() => ForecastRepository(
      remoteDataSource: get<CForecastRemoteDataSource>(),
      networkInfo: get<CNetworkInfo>()));
  gh.lazySingleton<GetForecasts>(() =>
      GetForecasts(get<CForecastRepository>(), get<ForecastTransformer>()));
  return get;
}

class _$ThirdPartyModule extends ThirdPartyModule {}
