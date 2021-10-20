import 'package:flutter/material.dart';
import 'package:weather_app/screens/ForecastScreen/Components/forecast_row_right_container.dart';
import 'package:weather_app/screens/ForecastScreen/Components/forecast_weather_circle_avatar.dart';

class ForecastRow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ForecastCircleAvatar(),
        Container(
          width: deviceWidth/2,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFDCDCDC)),
            borderRadius: BorderRadius.circular(45.0),
          ),
          child: ForecastContainer(),
        ),
      ],
    );
  }
}
