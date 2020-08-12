import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/util/date_formatter.dart';
import '../../domain/entity/forecast.dart';
import '../router.gr.dart';

class ForecastRow extends StatelessWidget {
  const ForecastRow(
    this.forecast, {
    Key key,
  }) : super(key: key);

  final Forecast forecast;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: InkWell(
          onTap: () => ExtendedNavigator.of(context).push(Routes.detailPage,
              arguments: DetailPageArguments(forecast: forecast)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FadeInImage.assetNetwork(
                placeholder: 'assets/03d@2x.png',
                image: forecast.icon,
              ),
              Text(
                '${forecast.temperature} °C',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  DateFormatter.jm(forecast.dateUnix),
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
