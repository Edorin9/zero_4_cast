part of 'forecast_bloc.dart';

@freezed
abstract class ForecastEvent with _$ForecastEvent {
  const factory ForecastEvent.pageInitialized() = PageInitialized;

  const factory ForecastEvent.listReordered(
    int groupIndex,
    int oldIndex,
    int newIndex,
  ) = ListReordered;
}
