import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/forecast_bloc.dart';

class Loader extends StatelessWidget {
  const Loader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForecastBloc, ForecastState>(
      builder: (context, state) {
        return (state.isLoading)
            ? Container(
                color: Colors.black45,
                width: double.infinity,
                height: double.infinity,
                child: const Center(child: CircularProgressIndicator()),
              )
            : Container();
      },
    );
  }
}
