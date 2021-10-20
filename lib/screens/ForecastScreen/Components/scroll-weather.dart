import 'package:flutter/material.dart';
import 'package:weather_app/screens/ForecastScreen/Components/forecast_row.dart';



class ScrollWeather extends StatefulWidget {


  @override
  State<ScrollWeather> createState() => _ScrollWeatherState();
}

class _ScrollWeatherState extends State<ScrollWeather> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount : 50,
        itemBuilder : (BuildContext context, int index){
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
              child: ForecastRow(),
          );
        }
    );
  }
}
