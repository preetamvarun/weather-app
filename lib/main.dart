import 'package:flutter/material.dart';
import 'package:weather_app/screens/ExploreScreen/explore-screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Screen1(),
    );
  }
}
