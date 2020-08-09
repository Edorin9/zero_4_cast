import 'package:flutter/foundation.dart';

import 'forecast_model.dart';

class ForecastResponse {
  final String code;
  final dynamic message;
  final List<ForecastModel> list;

  const ForecastResponse({
    @required this.code,
    @required this.message,
    @required this.list,
  });

  factory ForecastResponse.fromJson(Map<String, dynamic> json) {
    return ForecastResponse(
      code: json['code']?.toString(),
      message: json['message']?.toString() ?? "success",
      list: (json["list"] as List)
          .map((item) => ForecastModel.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }
}
