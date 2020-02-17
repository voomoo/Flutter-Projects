import 'package:flutter/material.dart';
import 'constants.dart';

class CalculatorBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF444444),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text('12345'),
                    Text('12345'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Divider(
                color: Colors.white,
              ),
            ),
            Expanded(child: kRowOfButton('9', '8', '7', '/')),
            Expanded(child: kRowOfButton('6', '5', '4', 'x')),
            Expanded(child: kRowOfButton('3', '2', '1', '-')),
            Expanded(child: kRowOfButton('00', '0', '.', '=')),

          ],
        ),
      ),
    );
  }
}
