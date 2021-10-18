import 'package:flutter/material.dart';
import 'package:weather_app/Utilities/network_helper.dart';
import 'package:weather_app/screens/ExploreScreen/explore-screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/Utilities/UILogic.dart';
import 'package:weather_app/screens/ForecastScreen/forecast_screen.dart';

class LoadingScreen extends StatefulWidget {

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  // @override
  // void initState() {
  //   getCurrentWeather();
  //   super.initState();
  // }

  void getCurrentWeather() async{
    var weatherData = await NetworkHelper().getCurrentWeatherData();
    int temp = weatherData['main']['temp'].round();
    int humidity = weatherData['main']['humidity'].round();
    int windSpeed = weatherData['wind']['speed'].round();
    String weatherDescription = weatherData['weather'][0]['description'];
    String dateResult = UI().getDate();

    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => Screen1(temperature: temp, humidity: humidity,
    //     windSpeed: windSpeed, weatherDescription: weatherDescription, date: dateResult,
    //     )
    //   ),
    // );
    // ~ 12.84, ~ 97 , ~ 2.57 (m/s)
  }

  @override
  Widget build(BuildContext context) {
    return ForeCastScreen();
  }
}

//
// Scaffold(
// backgroundColor: Colors.blueGrey,
// body: Center(
// child : SpinKitDoubleBounce(
// color: Colors.white,
// size : 100.0,
// )
// ),
// );