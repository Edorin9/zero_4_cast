import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di.dart';
import '../bloc/forecast_bloc.dart';

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
          TabbedForecastAppBar(),
          UpcomingForecastsList(),
        ],
      ),
    );
  }
}

class TabbedForecastAppBar extends StatelessWidget {
  const TabbedForecastAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForecastBloc, ForecastState>(
      builder: (context, state) {
        return const SliverAppBar(
          floating: true,
          snap: true,
          flexibleSpace: FlexibleSpaceBar(),
        );
      },
    );
  }
}

class UpcomingForecastsList extends StatelessWidget {
  const UpcomingForecastsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForecastBloc, ForecastState>(
      builder: (context, state) {
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const Center(
                child: Text(
                  'Nothing to see here yet.\nCome back later.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            },
            childCount: 27,
          ),
        );
      },
    );
  }
}
