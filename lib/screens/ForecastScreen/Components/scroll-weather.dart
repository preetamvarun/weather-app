import 'package:flutter/material.dart';
import 'package:weather_app/Utilities/UILogic.dart';
import 'package:weather_app/screens/ForecastScreen/Components/forecast_weather_circle_avatar.dart';

class ScrollWeather extends StatefulWidget {

  @override
  State<ScrollWeather> createState() => _ScrollWeatherState();
}

class _ScrollWeatherState extends State<ScrollWeather> {

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount : UI.forecastTemps.length,
        itemBuilder : (BuildContext context, int index){
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ForecastCircleAvatar(),
                  Container(
                    width : deviceWidth/2,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFDCDCDC)),
                      borderRadius: BorderRadius.circular(45.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right : 8.0),
                                child: Text(
                                  UI.forecastTemps[index].toString(),
                                  style: TextStyle(
                                    color: Color(0xFF293E7E),
                                    fontSize: deviceWidth / 10.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                right : 0,
                                top : 0,
                                child: Text(
                                  "o",
                                  style: TextStyle(
                                    color: Color(0xFF293E7E),
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom : 4.0),
                                child: Text('Monday', style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Text("19 October"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
          );
        }
    );
  }
}
