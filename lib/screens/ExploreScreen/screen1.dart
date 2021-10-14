import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/screens/ExploreScreen/Components/Text.dart';
import 'package:weather_app/screens/ExploreScreen/Components/wind-humid.dart';


late double stackWidth, stackHeight;

class Screen1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    stackWidth = deviceWidth/2;
    stackHeight = deviceHeight/2.5;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          decoration : BoxDecoration(
            gradient: LinearGradient(
              colors: kColors,
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20.0, 0, 10.0),
                child: ExploreScreenTextWidget(
                  text: "Los Angeles",
                  fontSize: deviceWidth/10.0,
                ),
              ),
              ExploreScreenTextWidget(
                text: "Chance of Rain is : 3%",
                fontSize: deviceWidth/22.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Container(
                    width: deviceWidth, // stackWidth will be half of the screen width
                    height: stackHeight,
                    child: Stack(
                      children: [
                        Positioned(
                        left: stackWidth/2,
                          child: Text(
                            "18",
                            style: TextStyle(
                              fontSize: stackWidth/1.35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          left: stackWidth/0.78,
                          child: Text("O",style: TextStyle(
                            fontSize: stackWidth/4.8,
                            color: Colors.white,
                          ),),
                        ),
                        Positioned(
                          top: stackHeight/2.5,
                          left : stackWidth/1.9,
                          child: Image(
                            image: AssetImage('images/rain.png'),
                            height: stackHeight/1.8,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          bottom: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: WindHumidColumn(text : "Wind", measure : "9km/h"),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: WindHumidColumn(text: "Humid", measure: "79%",)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


