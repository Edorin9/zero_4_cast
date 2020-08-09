import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../../core/error/exceptions.dart';
import '../model/forecast_response.dart';
import 'c_forecast_remote_data_source.dart';

@LazySingleton(as: CForecastRemoteDataSource)
class ForecastRemoteDataSource implements CForecastRemoteDataSource {
  final http.Client client;

  ForecastRemoteDataSource({@required this.client});

  static const baseUrl = 'https://community-open-weather-map.p.rapidapi.com';

  static const hostKey = 'x-rapidapi-host';
  static const hostValue = 'community-open-weather-map.p.rapidapi.com';
  static const authKey = 'x-rapidapi-key';
  static const authValue = 'NmKlbQcCL7mshLGV0WgGcTAZBbbxp1DSkUXjsnT8zHxNGY5DaH';

  final defaultHeaders = {
    hostKey: hostValue,
    authKey: authValue,
  };

  @override
  Future<ForecastResponse> getForecasts() async {
    final response = await client.get(
      '$baseUrl/forecast?q=manila',
      headers: defaultHeaders,
    );
    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;
      return ForecastResponse.fromJson(jsonMap);
    } else {
      throw ServerException();
    }
  }
}
