import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/Utilities/constants.dart';
import 'package:weather_app/screens/ExploreScreen/Components/Text.dart';
import 'package:weather_app/screens/ExploreScreen/Components/wind-humid.dart';
import 'package:weather_app/screens/ForecastScreen/forecast_screen.dart';

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
                text: weatherDescription,
                fontSize: deviceWidth/20.0,
              ),
              Center(
                child: Container(
                  height: stackHeight,
                  child: Stack(
                    children: [
                      Positioned(
                      top: stackHeight/8,
                      left: stackWidth/1.65,
                        child: ShaderMask(
                          shaderCallback: (Rect x){
                            return kLinearTextGradient.createShader(x);
                          },
                          child: Text(
                            temperature.toString(),
                              style: Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: stackWidth / 1.8,
                                color: Colors.white,
                              ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: stackHeight/10,
                        left: stackWidth/0.8,
                        child: Text(
                          "o",
                          style: TextStyle(
                            fontSize: stackWidth / 4.5,
                            color : Colors.white70,
                          )
                        )
                      ),
                     Positioned(
                          top: stackHeight/2.35,
                          left : stackWidth/1.85,
                          child: Image(
                            image: AssetImage('images/rain.png'),
                            height: stackHeight/2.0,
                          ),
                        ),
                      Positioned(
                        left: 0,
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: WindHumidColumn(text : "Wind", measure : windSpeed.toString()+"m/s"),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: WindHumidColumn(text: "Humidity", measure: humidity.toString()+"%"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration : BoxDecoration(
                      color : Colors.black,
                    ),
                    child: Center(
                      child : Text(
                        "Graph section will be added here",
                        style : TextStyle(
                          color : Colors.white,
                        ),
                      ),
                    ),
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
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => ForeCastScreen()
                                )
                              );
                            },
                            child: Image(
                              image: AssetImage('images/model.png'),
                              height : constraints.maxHeight/2.65,
                            ),
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



