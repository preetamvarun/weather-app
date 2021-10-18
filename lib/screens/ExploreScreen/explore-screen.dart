import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/Utilities/constants.dart';
import 'package:weather_app/screens/ExploreScreen/Components/Text.dart';
import 'package:weather_app/screens/ExploreScreen/Components/wind-humid.dart';

late double stackWidth, stackHeight;

class Screen1 extends StatelessWidget{

  final temperature, windSpeed, humidity, weatherDescription, date;
  Screen1({this.temperature, this.windSpeed, this.humidity, this.weatherDescription,this.date});

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ExploreScreenTextWidget(
                text: "London",
                fontSize: deviceWidth/10.5,
              ),
              ExploreScreenTextWidget(
                text: weatherDescription,
                fontSize: deviceWidth/18.0,
              ),
              Center(
                child: Container(
                  width: deviceWidth, // stackWidth will be half of the screen width
                  height: stackHeight,
                  child: Stack(
                    children: [
                      Positioned(
                      top: stackHeight/8,
                      left: stackWidth/1.65,
                        child: Text(
                          temperature.toString(),
                          style: TextStyle(
                            fontSize: stackWidth/1.8,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        top: stackHeight/10,
                        left: stackWidth/0.8,
                        child: Text("O",style: TextStyle(
                          fontSize: stackWidth/4.5,
                          color: Colors.white,
                        ),),
                      ),
                     Positioned(
                          top: stackHeight/2.35,
                          left : stackWidth/1.8,
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
                          child: WindHumidColumn(text : "Wind", measure : windSpeed.toString()+"m/s"),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 25.0),
                          child: WindHumidColumn(text: "Humidity", measure: humidity.toString()+"%"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: AssetImage('images/wind.png'),
                    height : deviceHeight/25.5,
                    color: Colors.white,
                  ),
                  Image(
                    image: AssetImage('images/waves.png'),
                    color: Colors.white,
                    height : deviceHeight/25.5,
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  Image(
                    image: AssetImage('images/cloudy.png'),
                    height : deviceHeight/25.5,
                  ),
                  Image(
                    image: AssetImage('images/storm.png'),
                    height : deviceHeight/25.5,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  height : deviceHeight/10.5,
                  child: LayoutBuilder(
                    builder: (context,constraints) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image(
                          image: AssetImage('images/home.png'),
                          height : constraints.maxHeight/2.65,
                        ),Image(
                          image: AssetImage('images/search.png'),
                          height : constraints.maxHeight/2.65,
                        ),
                        Text(
                          "Explore",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: constraints.maxHeight/4.2,
                            fontFamily: "Open Sans",
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.yellow,
                          child: Image(
                            image: AssetImage('images/model.png'),
                            height : constraints.maxHeight/2.65,
                          ),
                        )
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



