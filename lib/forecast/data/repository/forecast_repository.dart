import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/exceptions.dart';
import '../../../core/error/failures.dart';
import '../../../core/network/network_info.dart';
import '../../domain/entity/forecast.dart';
import '../../domain/repository/c_forecast_repository.dart';
import '../data_source/c_forecast_remote_data_source.dart';

@LazySingleton(as: CForecastRepository)
class ForecastRepository extends CForecastRepository {
  final CForecastRemoteDataSource remoteDataSource;
  final CNetworkInfo networkInfo;

  ForecastRepository({
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<Forecast>>> get5d3hForecastsList() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.getForecasts();
        return Right(response.list);
      } on ServerException {
        return const Left(ServerFailure());
      }
    } else {
      return const Left(NetworkFailure('No network connection'));
    }
  }
}
