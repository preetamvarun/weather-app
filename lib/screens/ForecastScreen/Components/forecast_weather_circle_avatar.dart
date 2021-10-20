import 'package:flutter/material.dart';

class ForecastCircleAvatar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return CircleAvatar(
      backgroundColor: Color(0xFFF3F9FE),
      radius : deviceWidth/7.65,
      child: Image(
        image: AssetImage('images/rain.png'),
        height : deviceWidth/7,
      ),
    );
  }
}
