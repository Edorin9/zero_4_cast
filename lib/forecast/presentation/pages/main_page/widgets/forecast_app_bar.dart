import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/forecast_bloc.dart';
import '../../../widgets/header_forecast.dart';

class ForecastAppBar extends StatelessWidget {
  const ForecastAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForecastBloc, ForecastState>(
      builder: (context, state) => SliverAppBar(
        backgroundColor: Colors.grey[900],
        expandedHeight: MediaQuery.of(context).size.height / 3.6,
        floating: true,
        snap: true,
        flexibleSpace: FlexibleSpaceBar(
          background: CarouselSlider(
            items: state.headerForecasts
                .map((forecast) => HeaderForecsat(forecast: forecast))
                .toList(),
            options: CarouselOptions(
              autoPlay: true,
              enableInfiniteScroll: false,
              viewportFraction: 1,
            ),
          ),
        ),
      ),
    );
  }
}
