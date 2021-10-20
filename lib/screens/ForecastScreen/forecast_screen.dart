import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/Utilities/constants.dart';
import 'package:weather_app/screens/ExploreScreen/Components/Text.dart';
import 'package:weather_app/screens/ForecastScreen/Components/forecast_row.dart';

class ForeCastScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: kLinearGradient
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ExploreScreenTextWidget(
                text: "London",
                fontSize: deviceWidth/11.5,
              ),
              ExploreScreenTextWidget(
                text: "Today's weather",
                fontSize: deviceWidth/22.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,8.0,10.0,0),
                    child: Image(
                      image: AssetImage("images/rain.png"),
                      height : 110.0,
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 10, 0),
                        child: Text(
                          "14",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 110.0,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right : 0,
                        child: Text(
                          "o",
                          style: TextStyle(
                            color : Colors.white,
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding : const EdgeInsets.fromLTRB(20.0, 0, 20.0, 8.0),
                    child: Container(
                      height: deviceHeight/1.7,
                      decoration: BoxDecoration(
                        color: Color(0xFFA6C7F5),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0,20.0,10.0,8.0),
                    child: Container(
                      height: deviceHeight/1.7,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left : 50.0),
                            child: Text(
                              "Future Weather",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                          ForecastRow(),
                          ForecastRow(),
                          ForecastRow(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




