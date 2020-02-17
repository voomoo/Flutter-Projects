import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main_screen.dart';
import 'dart:convert';

void main() => runApp(MyApp());

var title = "Error", date = "Error", explanation = "Either your internet service is off, or API call limit reached\nTry again later.", mediaType = 'image', url = "https://assets-ouch.icons8.com/free-download/152/f0b94264-fdb9-4562-848f-90c2e56a07a0.png?filename=pluto-page-not-found.png", credit = "null";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: SafeArea(
          child: MainDisplay(),

        ),
      ),
    );
  }
}

class MainDisplay extends StatefulWidget {
  @override
  _MainDisplayState createState() => _MainDisplayState();
}

class _MainDisplayState extends State<MainDisplay> {
  getData()async{
    GetInfo getInfo = GetInfo();
    String data = await getInfo.getInfo();
    var decodedData = await jsonDecode(data);
    print(data);
    return decodedData;
  }
  getInfo() async{
    var data = await getData();
    setState(() {
      title = data['title'];
      explanation = data['explanation'];
      date = data['date'];
      mediaType = data['media_type'];
      if (mediaType == 'image'){
        url = data['url'];
      }

      credit = data['copyright'];
      print(title);
    });
    return title;
  }

//  media()async{
//    var data2 = await getData();
//    setState(() {
//      mediaType = data2['media_type'];
//      if(mediaType == "video"){
//        url = 'https://assets-ouch.icons8.com/free-download/152/f0b94264-fdb9-4562-848f-90c2e56a07a0.png?filename=pluto-page-not-found.png';
//      }else{
//        url = data2['url'];
//      }
//    });
//
//  }
  @override
  Widget build(BuildContext context) {
    getData();
    getInfo();
    print(mediaType);
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Credit: $credit',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      date,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 2,
            child: Center(
              child: Image.network(url),
              ),
            ),
          Expanded(
            flex: 2,
            child: Center(
              child: Text(
                explanation,
              ),
            ),
          ),

        ],
      ),
    );
  }
}




//nasa api = https://api.nasa.gov/planetary/apod?api_key=XegDZHpf8L9EfU4UaPFBpTjMP2MJt3oW1otIlLNF