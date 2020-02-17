import 'package:flutter/material.dart';
import 'calculator_body.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorBody(),
    );
  }
}

