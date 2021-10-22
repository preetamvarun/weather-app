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
              padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                    backgroundColor: Color(0xFFF3F9FE),
                    radius : deviceWidth/9.5,
                    child: Image(
                        image : AssetImage(UI.getForecastImageName(index)),
                        height : deviceWidth/8.5,
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
                            Text(
                              UI.forecastTemps[index] < 10 ? "0"+UI.forecastTemps[index].toString()
                              : UI.forecastTemps[index].toString(),
                              style: TextStyle(
                                color: Color(0xFF293E7E),
                                fontSize: deviceWidth / 10,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom : 8.0),
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
                ),
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