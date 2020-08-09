import '../../../core/error/exceptions.dart';
import '../model/forecast_response.dart';

abstract class CForecastRemoteDataSource {
  /// Returns [ForecastResponse] forecasts for Manila.
  ///
  /// Throws [ServerException] for error codes
  Future<ForecastResponse> getForecasts();
}
