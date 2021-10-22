import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/Utilities/constants.dart';
import 'package:weather_app/screens/ExploreScreen/Components/Text.dart';
import 'package:weather_app/screens/ForecastScreen/Components/scroll-weather.dart';
import 'package:weather_app/Utilities/UILogic.dart';

class ForeCastScreen extends StatelessWidget {

  final temperature, weatherID;
  ForeCastScreen({this.temperature, this.weatherID});

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
            children: [
              ExploreScreenTextWidget(
                text: "Paris",
                fontSize: deviceWidth/10,
              ),
              ExploreScreenTextWidget(
                text: "Today's weather",
                fontSize: deviceWidth/25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image : AssetImage(UI.getCurrentImageName(weatherID)),
                    height : deviceHeight/9,
                  ),
                  ShaderMask(
                    shaderCallback: (Rect x){
                      return kLinearTextGradient.createShader(x);
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0,8.0,0.0,0.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            temperature < 10 ? "0"+temperature.toString() :
                            temperature.toString(),
                            style:  Theme.of(context).textTheme.headline4!.copyWith(
                              fontSize: deviceHeight/8.5,
                              color: Colors.white,
                            ),
                          ),
                          Text("O", style: Theme.of(context).textTheme.headline4!
                              .copyWith(
                            fontSize: 20.0,
                            color : Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30,10,30,10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFA6C7F5),
                          borderRadius: BorderRadius.circular(75.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,30,20,10),
                      child: Container(
                          height: 350.0,
                          decoration : BoxDecoration(
                            color : Colors.white,
                            borderRadius: BorderRadius.circular(55.0),
                          ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical : 25.0),
                              child: Container(
                                height : 6.0,
                                margin: EdgeInsets.symmetric(horizontal: 130.0),
                                decoration: BoxDecoration(
                                  color : Color(0xFF6FA6EB),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Text(
                                "Future Weather",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize : deviceHeight/35,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,130,20,10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(55),
                        ),
                        child: ScrollWeather()
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