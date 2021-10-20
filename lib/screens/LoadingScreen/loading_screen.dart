import 'package:flutter/material.dart';
import 'package:weather_app/Utilities/network_helper.dart';
import 'package:weather_app/screens/ExploreScreen/explore-screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/Utilities/UILogic.dart';
import 'package:weather_app/screens/ForecastScreen/forecast_screen.dart';
import 'package:weather_app/practice.dart';


class LoadingScreen extends StatefulWidget {

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    getCurrentWeather();
    super.initState();
  }

  void getCurrentWeather() async{

    var weatherData = await NetworkHelper().getCurrentWeatherData();
    var forecastWeatherData = await NetworkHelper().getForecastedWeatherData();

    for(int i = 0; i < forecastWeatherData['list'].length; i++){
      UI.forecastTemps.add(forecastWeatherData['list'][i]['main']['temp'].round());
      UI.forecastDates.add(forecastWeatherData['list'][i]['dt_txt'].split(" ")[0]);
      UI.forecastTimes.add(forecastWeatherData['list'][i]['dt_txt'].split(" ")[1]);
      UI.forecastWeatherIds.add(forecastWeatherData['list'][i]['weather'][0]['id']);
    }

    print(UI.forecastWeatherIds);
    print(UI.forecastWeatherIds.length);

    int temp = weatherData['main']['temp'].round();
    int humidity = weatherData['main']['humidity'].round();
    int windSpeed = weatherData['wind']['speed'].round();
    int weatherID = weatherData['weather'][0]['id'];
    String weatherDescription = weatherData['weather'][0]['description'];

    String dateResult = UI().getDate();


    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Screen1(temperature: temp, humidity: humidity,
        windSpeed: windSpeed, weatherDescription: weatherDescription, date: dateResult,
          weatherID: weatherID,
        )),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
          child : SpinKitDoubleBounce(
            color: Colors.white,
            size : 100.0,
          )
      ),
    );
  }
}



// Input for future reference

// [17, 16, 14, 10, 10, 9, 9, 11, 11, 9, 8, 8, 7, 7, 9, 11, 12, 11, 10, 9, 8, 8, 10, 13, 13, 12,
// 11, 10, 11, 10, 12, 14, 14, 13, 13, 13, 11, 10, 12, 15]
// [2021-10-20, 2021-10-20, 2021-10-20, 2021-10-21, 2021-10-21, 2021-10-21, 2021-10-21, 2021-10-21,
// 2021-10-21, 2021-10-21, 2021-10-21, 2021-10-22, 2021-10-22, 2021-10-22, 2021-10-22, 2021-10-22,
// 2021-10-22, 2021-10-22, 2021-10-22, 2021-10-23, 2021-10-23, 2021-10-23, 2021-10-23, 2021-10-23,
// 2021-10-23, 2021-10-23, 2021-10-23, 2021-10-24, 2021-10-24, 2021-10-24, 2021-10-24, 2021-10-24,
// 2021-10-24, 2021-10-24, 2021-10-24, 2021-10-25, 2021-10-25, 2021-10-25, 2021-10-25, 2021-10-25]
//
