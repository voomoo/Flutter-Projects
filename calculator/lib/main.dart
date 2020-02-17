import 'package:flutter/material.dart';
import 'components.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Components components = Components();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Color(0xFFF2B6B1),
                  ),
                ),
                components.rowOfButton('C', '+/-', '◄', '÷'),
                components.rowOfButton('7', '8', '9', 'x'),
                components.rowOfButton('4', '5', '6', '-'),
                components.rowOfButton('1', '2', '3', '+'),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: <Widget>[
                        components.button('0'),
                        components.button('.'),
                        components.bigButton('='),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
