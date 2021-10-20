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
                  CircleAvatar(
                  backgroundColor: Color(0xFFF3F9FE),
                  radius : deviceWidth/8.5,
                  child: Image(
                      image : UI.forecastWeatherIds[index] < 300 ?
                      AssetImage("images/thunderStorm.png") :
                      UI.forecastWeatherIds[index] < 600 ? AssetImage('images/rain.png')
                    : UI.forecastWeatherIds[index] < 700 ? AssetImage('images/snow.png')
                    : UI.forecastWeatherIds[index] < 800 ? AssetImage('images/windy.png')
                    : UI.forecastWeatherIds[index] == 800 ? AssetImage('images/clear-sky.png')
                    : UI.forecastWeatherIds[index] < 804 ? AssetImage('images/cloudy.png')
                    : AssetImage('wind.png'),
                      height : deviceWidth/7.5,
                    ),
                  ),
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
                                padding: const EdgeInsets.only(bottom : 10.0),
                                child: Text(UI.month[UI.forecastDates[index].split("-")[1]].toString() + " "+ UI.forecastDates[index].split("-")[2], style: TextStyle(fontSize : 13.0)),
                              ),
                              Text(UI.forecastTimes[index].toString()),
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


// Weather ID < 300 -> Thunder Storm there
// < 600 rain there
// < 700 snow there
// < 800 winds/tornado there
// == 800 clear sky there
// < 804 clouds
// else weather uncertain