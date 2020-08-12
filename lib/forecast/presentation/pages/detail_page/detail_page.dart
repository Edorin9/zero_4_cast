import 'package:flutter/material.dart';

import '../../../../core/util/date_formatter.dart';
import '../../../domain/entity/forecast.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
    this.forecast, {
    Key key,
  }) : super(key: key);

  final Forecast forecast;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(DateFormatter.eeeeMmmD(forecast.dateUnix)),
      ),
      body: Container(
        color: Colors.grey[900],
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 7),
                child: Text(
                  DateFormatter.jm(forecast.dateUnix),
                  style: const TextStyle(
                      fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
              FadeInImage.assetNetwork(
                placeholder: 'assets/03d@2x.png',
                image: forecast.icon,
              ),
              Text(
                forecast.description,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                '${forecast.temperature} °C',
                style:
                    const TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 27),
              Text(
                '${forecast.minTemperature} °C - ${forecast.maxTemperature} °C',
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
