import 'package:flutter/material.dart';

import '../../../core/util/date_formatter.dart';
import '../../domain/entity/forecast.dart';

class HeaderForecsat extends StatelessWidget {
  const HeaderForecsat({
    this.forecast,
    Key key,
  }) : super(key: key);

  final Forecast forecast;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 6),
          child: Text(
            'Today',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          DateFormatter.jm(forecast.dateUnix),
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInImage.assetNetwork(
              placeholder: 'assets/03d@2x.png',
              image: forecast.icon,
            ),
            const SizedBox(width: 4),
            Text(
              '${forecast.temperature} °C',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 21),
          ],
        )
      ],
    );
  }
}
