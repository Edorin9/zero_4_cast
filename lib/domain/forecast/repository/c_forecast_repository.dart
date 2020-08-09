import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../entity/forecast.dart';

abstract class CForecastRepository {
  Future<Either<Failure, List<Forecast>>> get5d3hForecastsList();
}
