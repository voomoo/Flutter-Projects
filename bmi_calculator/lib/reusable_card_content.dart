import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableCardContent extends StatelessWidget {
  ReusableCardContent({@required this.icon, @required this.string});
  final IconData icon;
  final String string;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          '$string',
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}