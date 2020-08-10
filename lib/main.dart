import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'di.dart';
import 'forecast/presentation/pages/main_page.dart';

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
      home: const MainPage(),
    );
  }
}
