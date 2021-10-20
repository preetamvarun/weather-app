import 'package:flutter/material.dart';

class ForecastCircleAvatar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Color(0xFFF3F9FE),
      radius : 45.0,
      child: Image(
        image: AssetImage('images/rain.png'),
        height : 45.0,
      ),
    );
  }
}
