part of 'forecast_bloc.dart';

@freezed
abstract class ForecastState implements _$ForecastState {
  const ForecastState._();

  const factory ForecastState({
    @required List<Forecast> topForecasts,
    @required List<List<Forecast>> listForecasts,
    @required bool isLoading,
    @required String error,
  }) = _ForecastState;

  factory ForecastState.initial() => const ForecastState(
        topForecasts: <Forecast>[],
        listForecasts: <List<Forecast>>[],
        isLoading: false,
        error: "",
      );

  ForecastState loading() => copyWith(
        isLoading: true,
        error: "",
      );

  ForecastState withError(String message) => copyWith(
        isLoading: false,
        error: message,
      );

  ForecastState loaded({
    List<Forecast> latestForecasts,
    List<List<Forecast>> upcomingForecasts,
  }) =>
      copyWith(
        topForecasts: latestForecasts ?? topForecasts,
        listForecasts: upcomingForecasts ?? listForecasts,
        isLoading: false,
        error: "",
      );
}
