import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/use_case/use_case.dart';
import '../../domain/entity/forecast.dart';
import '../../domain/use_case/get_grouped_forecasts.dart';

part 'forecast_bloc.freezed.dart';
part 'forecast_event.dart';
part 'forecast_state.dart';

@injectable
class ForecastBloc extends Bloc<ForecastEvent, ForecastState> {
  final GetGroupedForecasts getGroupedForecasts;

  ForecastBloc({
    @required GetGroupedForecasts usecase,
  })  : assert(usecase != null),
        getGroupedForecasts = usecase,
        super(ForecastState.initial());

  // UI Hhelpers

  static ForecastBloc of(BuildContext context) =>
      BlocProvider.of<ForecastBloc>(context);

  void pageInitialized() => add(const PageInitialized());

  void listReordered(
    int groupIndex,
    int oldIndex,
    int newIndex,
  ) =>
      add(ListReordered(
        groupIndex,
        oldIndex,
        newIndex,
      ));

  // Overrides

  @override
  Stream<ForecastState> mapEventToState(ForecastEvent event) => event.map(
        pageInitialized: _onPageInitialized,
        listReordered: _onListReordered,
      );

  // Private Methods

  Stream<ForecastState> _onPageInitialized(PageInitialized event) async* {
    // load - retrieve - set
    yield state.loading();
    final forecasts = await getGroupedForecasts(const NoParams());
    yield* forecasts.fold(
      (failure) async* {
        yield state.withError(failure.errorMessage);
      },
      (groupedForecasts) async* {
        yield state.loaded(
          latestForecasts: groupedForecasts.first,
          upcomingForecasts: groupedForecasts.sublist(1),
        );
      },
    );
  }

  Stream<ForecastState> _onListReordered(
    ListReordered event,
  ) async* {
    // refresh - process new list - set
    yield state.loading();
    final newGroupList = state.listForecasts[event.groupIndex];
    final forecast = newGroupList.removeAt(event.oldIndex);
    newGroupList.insert(event.newIndex, forecast);
    final reorderedUpcomingForecasts = state.listForecasts
      ..removeAt(event.groupIndex)
      ..insert(event.groupIndex, newGroupList);
    yield state.loaded(upcomingForecasts: reorderedUpcomingForecasts);
  }
}
