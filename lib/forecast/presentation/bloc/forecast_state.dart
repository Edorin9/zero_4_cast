part of 'forecast_bloc.dart';

@freezed
abstract class ForecastState implements _$ForecastState {
  const ForecastState._();

  const factory ForecastState({
    @required List<Forecast> headerForecasts,
    @required List<List<Forecast>> listForecasts,
    @required bool isLoading,
    @required String error,
  }) = _ForecastState;

  factory ForecastState.initial() => const ForecastState(
        headerForecasts: <Forecast>[],
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
        headerForecasts: latestForecasts ?? headerForecasts,
        listForecasts: upcomingForecasts,
        isLoading: false,
        error: "",
      );

  ForecastState newList(
    List<List<Forecast>> upcomingForecasts,
  ) =>
      copyWith(listForecasts: upcomingForecasts ?? listForecasts);
}
