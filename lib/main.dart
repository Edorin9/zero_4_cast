import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'di.dart';
import 'forecast/presentation/router.gr.dart';

void main() {
  configInjection(Environment.dev);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zero4Cast',
      theme: ThemeData(brightness: Brightness.dark, accentColor: Colors.cyan),
      builder: ExtendedNavigator.builder(router: Router()),
    );
  }
}
