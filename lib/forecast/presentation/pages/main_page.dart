import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di.dart';
import '../bloc/forecast_bloc.dart';
import 'widgets/forecast_app_bar.dart';
import 'widgets/forecasts_list.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ForecastBloc>(),
      child: const Scaffold(
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForecastBloc.of(context).pageInitialized();
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          ForecastAppBar(),
          ForecastsList(),
        ],
      ),
    );
  }
}
