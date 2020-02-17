import 'package:flutter/material.dart';

TextStyle kNumericalStyle(Color col){
  return TextStyle(
    fontSize: 35.0,
    color: col,
  );
}

Text kNumberButton(String value, TextStyle style){
  return Text(
    value,
    style: style,
    textAlign: TextAlign.center,
  );
}

Row kRowOfButton(String x, String y, String z, String m){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Expanded(child: kNumberButton(x, kNumericalStyle(Colors.white54))),
      Expanded(child: kNumberButton(y, kNumericalStyle(Colors.white54))),
      Expanded(child: kNumberButton(z, kNumericalStyle(Colors.white54))),
      Expanded(child: kNumberButton(m, kNumericalStyle(Colors.deepOrange))),
    ],
  );
}