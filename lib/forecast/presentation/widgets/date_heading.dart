import 'package:flutter/material.dart';

class DateHeading extends StatelessWidget {
  const DateHeading(
    this.headerText, {
    Key key,
  }) : super(key: key);

  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Text(
          headerText,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
