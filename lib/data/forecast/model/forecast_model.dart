import 'package:flutter/foundation.dart';

import '../../../domain/forecast/entity/forecast.dart';

class ForecastModel extends Forecast {
  const ForecastModel({
    @required double temperature,
    @required double minTemperature,
    @required double maxTemperature,
    @required double feelsLike,
    @required int humidity,
    @required String condition,
    @required String description,
    @required String icon,
    @required String dateText,
    @required int dateUnix,
  }) : super(
          temperature: temperature,
          minTemperature: minTemperature,
          maxTemperature: maxTemperature,
          feelsLike: feelsLike,
          humidity: humidity,
          condition: condition,
          description: description,
          icon: icon,
          dateText: dateText,
          dateUnix: dateUnix,
        );

  factory ForecastModel.fromJson(Map<String, dynamic> json) {
    return ForecastModel(
      temperature: (json['main']['temp'] as num)?.toDouble(),
      minTemperature: (json['main']['temp_min'] as num)?.toDouble(),
      maxTemperature: (json['main']['temp_max'] as num)?.toDouble(),
      feelsLike: (json['main']['feels_like'] as num)?.toDouble(),
      humidity: (json['main']['humidity'] as num)?.toInt(),
      condition: json['weather'][0]['main']?.toString(),
      description: json['weather'][0]['description']?.toString(),
      icon: json['weather'][0]['icon']?.toString(),
      dateText: json['dt_text']?.toString(),
      dateUnix: (json['dt'] as num)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "main": {
        "temp": temperature,
        "temp_min": minTemperature,
        "temp_max": maxTemperature,
        "feels_like": feelsLike,
        "humidity": humidity,
      },
      "weather": [
        {
          "main": condition,
          "description": description,
          "icon": icon,
        }
      ],
      "dt_text": dateText
    };
  }
}
