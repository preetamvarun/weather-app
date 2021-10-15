import 'package:flutter/material.dart';
import 'package:weather_app/Utilities/constants.dart';

class WindHumidColumn extends StatelessWidget {

  final text, measure;
  WindHumidColumn({this.text,this.measure});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(text, style : kExploreTextStyle),
        Padding(
          padding: const EdgeInsets.only(top : 10.0),
          child: Text(measure, style: kExploreTextStyle,),
        ),
      ],
    );
  }
}