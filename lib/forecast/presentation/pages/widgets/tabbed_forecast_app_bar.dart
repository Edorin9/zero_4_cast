import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/forecast_bloc.dart';

class TabbedForecastAppBar extends StatelessWidget {
  const TabbedForecastAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForecastBloc, ForecastState>(
      builder: (context, state) => SliverAppBar(
        expandedHeight: MediaQuery.of(context).size.height / 3.6,
        floating: true,
        snap: true,
        flexibleSpace: const FlexibleSpaceBar(
          background: Center(
              child: Text(
            'Tabbed Forecasts Here',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          )),
        ),
      ),
    );
  }
}
