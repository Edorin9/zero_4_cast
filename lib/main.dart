import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'di.dart';

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
      home: Scaffold(
        body: Container(
          color: Colors.lightBlue[200],
          child: const Center(
            child: Text(
              'Nothing to see here yet.\nCome back later.',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
