// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

import 'core/network/network_info.dart';
import 'di.dart';
import 'forecast/data/data_source/c_forecast_remote_data_source.dart';
import 'forecast/data/data_source/forecast_remote_data_source.dart';
import 'forecast/data/repository/forecast_repository.dart';
import 'forecast/domain/repository/c_forecast_repository.dart';
import 'forecast/domain/transformer/forecast_transformer.dart';
import 'forecast/domain/use_case/get_grouped_forecasts.dart';
import 'forecast/presentation/bloc/forecast_bloc.dart';

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
  gh.lazySingleton<GetGroupedForecasts>(() => GetGroupedForecasts(
      get<CForecastRepository>(), get<ForecastTransformer>()));
  gh.factory<ForecastBloc>(
      () => ForecastBloc(usecase: get<GetGroupedForecasts>()));
  return get;
}

class _$ThirdPartyModule extends ThirdPartyModule {}
