import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:zero_4_cast/core/use_case/use_case.dart';
import 'package:zero_4_cast/forecast/domain/use_case/get_grouped_forecasts.dart';

import '../../domain/entity/forecast.dart';

part 'forecast_bloc.freezed.dart';
part 'forecast_event.dart';
part 'forecast_state.dart';

@injectable
class ForecastBloc extends Bloc<ForecastEvent, ForecastState> {
  final GetGroupedForecasts getGroupedForecasts;

  ForecastBloc({@required GetGroupedForecasts usecase})
      : assert(usecase != null),
        getGroupedForecasts = usecase,
        super(ForecastState.initial());

  // UI Hhelpers

  static ForecastBloc of(BuildContext context) =>
      BlocProvider.of<ForecastBloc>(context);

  void pageCreated() => add(const PageCreated());

  // Overrides

  @override
  Stream<ForecastState> mapEventToState(ForecastEvent event) =>
      event.map(pageCreated: _onPageCreated);

  // Private Methods

  Stream<ForecastState> _onPageCreated(PageCreated event) async* {
    // load - retrieve - set
    yield state.loading();
    final forecasts = await getGroupedForecasts(const NoParams());
    yield* forecasts.fold(
      (failure) async* {
        yield state.withError(failure.errorMessage);
      },
      (groupedForecasts) async* {
        print(groupedForecasts);
        yield state.loaded(
          latestForecasts: groupedForecasts.first,
          upcomingForecasts: groupedForecasts.sublist(1),
        );
      },
    );
  }
}
