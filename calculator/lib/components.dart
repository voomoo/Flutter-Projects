import 'package:flutter/material.dart';

class Components{
  Widget button(String btnN0) {

    return Expanded(
      child: RawMaterialButton(
        padding: EdgeInsets.all(20.0),
        onPressed: () {},
        fillColor: Colors.white,
        shape: CircleBorder(),
        elevation: 12.0,
        child: Text(
          btnN0,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.black,
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }

  Widget rowOfButton(String btn1, String btn2, String btn3, String btn4){
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: <Widget>[
            button(btn1),
            button(btn2),
            button(btn3),
            button(btn4),
          ],
        ),
      ),
    );
  }

  Widget bigButton(String name){
    return Expanded(
      flex: 2,
      child: RawMaterialButton(
        padding: EdgeInsets.all(20.0),
        onPressed: () {},
        fillColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0)
        ),
        elevation: 12.0,
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 42.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

}

