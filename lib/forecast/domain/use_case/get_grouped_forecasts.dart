import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/failures.dart';
import '../../../core/use_case/use_case.dart';
import '../entity/forecast.dart';
import '../repository/c_forecast_repository.dart';
import '../transformer/forecast_transformer.dart';

@lazySingleton
class GetGroupedForecasts implements UseCase<List<List<Forecast>>, NoParams> {
  final CForecastRepository repository;
  final ForecastTransformer transformer;

  GetGroupedForecasts(this.repository, this.transformer);

  @override
  Future<Either<Failure, List<List<Forecast>>>> call(NoParams _) async {
    final forecasts = await repository.get5d3hForecastsList();
    return forecasts?.fold(
      (failure) => Left(failure),
      (forecasts) => transformer.groupByDate(forecasts),
    );
  }
}
