import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:reorderables/reorderables.dart';

import '../../../../../core/util/date_formatter.dart';
import '../../../bloc/forecast_bloc.dart';
import '../../../widgets/date_heading.dart';
import '../../../widgets/forecast_row.dart';

class ForecastsList extends HookWidget {
  const ForecastsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    return BlocBuilder<ForecastBloc, ForecastState>(
      builder: (context, state) {
        return SliverPadding(
          padding: const EdgeInsets.all(8),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, groupIndex) {
                final firstForecastInGroup =
                    state.listForecasts[groupIndex].first;
                final headerText =
                    DateFormatter.eeeeMmmD(firstForecastInGroup.dateUnix);
                final forecasts = state.listForecasts[groupIndex];
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ReorderableColumn(
                      scrollController: scrollController,
                      header: DateHeading(headerText),
                      crossAxisAlignment: CrossAxisAlignment.start,
                      onReorder: (oldIndex, newIndex) {
                        ForecastBloc.of(context)
                            .listReordered(groupIndex, oldIndex, newIndex);
                      },
                      children: forecasts
                          .map(
                            (forecast) => ForecastRow(
                              forecast,
                              key: ValueKey(forecast),
                            ),
                          )
                          .toList(),
                    ));
              },
              childCount: state.listForecasts.length,
            ),
          ),
        );
      },
    );
  }
}
