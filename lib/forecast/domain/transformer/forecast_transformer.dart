import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/failures.dart';
import '../entity/forecast.dart';

@lazySingleton
class ForecastTransformer {
  /// Transforms [forecasts] into a [List] of [Forecast] [List]s grouped by date
  Either<Failure, List<List<Forecast>>> groupByDate(List<Forecast> forecasts) {
    try {
      // unique dates with times removed from string value
      final uniqueDateTexts = forecasts
          .map((forecast) => forecast.dateText?.split(" ")?.first)
          .toSet()
          .toList();
      // map unique dates into lists of forecasts grouped by date
      return Right(uniqueDateTexts
          .map((date) => forecasts
              .where((forecast) => forecast.dateText?.contains(date) == true)
              .toList())
          .toList());
    } on Exception catch (err) {
      return Left(TransformFailure(err.toString()));
    }
  }
}

class TransformFailure extends Failure {
  static const defaultMessage = 'Transform Failure';

  const TransformFailure([String message = defaultMessage]) : super(message);
}
