import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Forecast extends Equatable {
  final double temperature;
  final double minTemperature;
  final double maxTemperature;
  final double feelsLike;
  final int humidity;
  final String condition;
  final String description;
  final String icon;
  final String dateText;
  final int dateUnix;

  const Forecast({
    @required this.temperature,
    @required this.minTemperature,
    @required this.maxTemperature,
    @required this.feelsLike,
    @required this.humidity,
    @required this.condition,
    @required this.description,
    @required this.icon,
    @required this.dateText,
    @required this.dateUnix,
  });

  @override
  List<Object> get props => [
        temperature,
        minTemperature,
        maxTemperature,
        feelsLike,
        humidity,
        condition,
        description,
        icon,
        dateText,
        dateUnix,
      ];
}
