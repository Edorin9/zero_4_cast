part of 'forecast_bloc.dart';

@freezed
abstract class ForecastEvent with _$ForecastEvent {
  const factory ForecastEvent.pageCreated() = PageCreated;
}
