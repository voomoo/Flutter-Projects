import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Beautiful Flutter App',
          style: TextStyle(
              fontFamily: 'Pacifico'

          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Image.asset('assets/earth.jpg'),

      ),
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(
          'Click',
          style: TextStyle(
              fontFamily: 'Pacifico'
          ),
        ),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}


