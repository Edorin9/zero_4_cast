// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../domain/entity/forecast.dart';
import 'pages/detail_page/detail_page.dart';
import 'pages/main_page/main_page.dart';

class Routes {
  static const String mainPage = '/';
  static const String detailPage = '/detail-page';
  static const all = <String>{
    mainPage,
    detailPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.mainPage, page: MainPage),
    RouteDef(Routes.detailPage, page: DetailPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    MainPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MainPage(),
        settings: data,
      );
    },
    DetailPage: (data) {
      final args = data.getArgs<DetailPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => DetailPage(
          args.forecast,
          key: args.key,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// DetailPage arguments holder class
class DetailPageArguments {
  final Forecast forecast;
  final Key key;
  DetailPageArguments({@required this.forecast, this.key});
}
