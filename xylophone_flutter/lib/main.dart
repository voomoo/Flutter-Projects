import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());




class XylophoneApp extends StatelessWidget {

  void MusicPlay(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded BuildKey(int x, Color color){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          MusicPlay(x);
        },
        padding: EdgeInsets.all(0.0),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              BuildKey(1, Colors.red),
              BuildKey(2, Colors.orange),
              BuildKey(3, Colors.yellow),
              BuildKey(4, Colors.green),
              BuildKey(5, Colors.indigo),
              BuildKey(6, Colors.blue),
              BuildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

