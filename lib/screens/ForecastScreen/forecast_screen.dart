import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/Utilities/constants.dart';
import 'package:weather_app/screens/ExploreScreen/Components/Text.dart';
import 'package:weather_app/screens/ForecastScreen/Components/forecast_weather.dart';
import 'package:weather_app/screens/ForecastScreen/Components/forecast_weather_circle_avatar.dart';

class ForeCastScreen extends StatelessWidget {
  const ForeCastScreen({Key? key}) : super(key: key);

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
                fontSize: deviceWidth/10.5,
              ),
              ExploreScreenTextWidget(
                text: "Today's weather",
                fontSize: deviceWidth/18.0,
              ),
              Stack(
                children: [
                  Padding(
                    padding : const EdgeInsets.fromLTRB(20.0, 0, 20.0, 10.0),
                    child: Container(
                      height: deviceHeight/1.55,
                      decoration: BoxDecoration(
                        color: Color(0xFFA6C7F5),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0,20.0,10.0,10.0),
                    child: Container(
                      height: deviceHeight/1.55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(55.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left : 45.0),
                            child: Text(
                              "Future Weather",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ForecastCircleAvatar(),
                              Container(
                                width: deviceWidth/2,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFFDCDCDC)),
                                  borderRadius: BorderRadius.circular(35.0),
                                ),
                                child: ForecastContainer(),
                              ),
                            ],
                          ),Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ForecastCircleAvatar(),
                              Container(
                                width: deviceWidth/2,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFFDCDCDC)),
                                  borderRadius: BorderRadius.circular(35.0),
                                ),
                                child: ForecastContainer(),
                              ),
                            ],
                          ),Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ForecastCircleAvatar(),
                              Container(
                                width: deviceWidth/2,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFFDCDCDC)),
                                  borderRadius: BorderRadius.circular(35.0),
                                ),
                                child: ForecastContainer(),
                              ),
                            ],
                          ),
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



