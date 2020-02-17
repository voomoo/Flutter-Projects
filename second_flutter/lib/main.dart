import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home: Home(),

));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.green[800],
      ),

      body: Container(
        padding: EdgeInsets.all(25.0),
        color: Colors.grey,
        child: Text(
            'Hello',
        style: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.bold,

        ),
        ),


      )


    );
  }
}


