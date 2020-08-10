import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zero_4_cast/forecast/presentation/bloc/forecast_bloc.dart';

import '../../../di.dart';

class ForecastPage extends StatelessWidget {
  const ForecastPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ForecastBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Zero4Cast'),
        ),
        body: const _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForecastBloc.of(context).pageInitialized();
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
  }
}
