import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/Utilities/constants.dart';
import 'package:weather_app/screens/ExploreScreen/Components/Text.dart';
import 'package:weather_app/screens/ForecastScreen/Components/scroll-weather.dart';

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
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ExploreScreenTextWidget(
                text: "London",
                fontSize: deviceWidth/7.5,
              ),
              ExploreScreenTextWidget(
                text: "Today's weather",
                fontSize: deviceWidth/20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,8.0,10.0,0),
                    child: Image(
                      image: AssetImage("images/rain.png"),
                      height : deviceHeight/8,
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 10, 0),
                        child: ShaderMask(
                          shaderCallback: (Rect x){
                            return kLinearTextGradient.createShader(x);
                          },
                          child: Text(
                            "14",
                            style:  Theme.of(context).textTheme.headline4!.copyWith(
                              fontSize: deviceHeight/7.5,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right : 0,
                        child: Text(
                          "o",
                          style: TextStyle(
                            color : Colors.white70,
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFA6C7F5),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(60.0),
                            bottom: Radius.zero,
                          )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                                top : Radius.circular(50.0),
                                bottom :Radius.zero,
                            ),
                          ),
                          child: ScrollWeather()
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}