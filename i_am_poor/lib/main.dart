import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.green,
    appBar: AppBar(
      backgroundColor: Colors.green[800],
      title: Text('I am Poor!'),
      centerTitle: true,
    ),
    body: Center(
      child: Image(
        image: AssetImage('images/coal.png'),
        width: 250.0,
      ),
    ),
  ),
));
