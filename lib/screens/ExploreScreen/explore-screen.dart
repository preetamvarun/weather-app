import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/Utilities/constants.dart';
import 'package:weather_app/screens/ExploreScreen/Components/Text.dart';
import 'package:weather_app/screens/ExploreScreen/Components/wind-humid.dart';
import 'package:weather_app/screens/ForecastScreen/forecast_screen.dart';
import 'package:weather_app/Utilities/UILogic.dart';

late double stackWidth, stackHeight;

class Screen1 extends StatelessWidget{

  final temperature, windSpeed, humidity, weatherDescription, dayName, date, monthName, weatherID;
  Screen1({this.temperature, this.windSpeed, this.humidity, this.weatherDescription,this.date,this.weatherID,
  this.dayName,this.monthName});

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
                text: "Paris",
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
                            temperature < 10 ? "0"+temperature.toString() :
                                temperature.toString(),
                              style: Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: stackWidth / 1.8,
                                color: Colors.white,
                              ),
                          ),
                        ),
                      ),
                     Positioned(
                          top: stackHeight/2.35,
                          left : stackWidth/1.73,
                          child: Image(
                            image : AssetImage(UI.getCurrentImageName(weatherID)),
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
                  padding: const EdgeInsets.all(15.0),
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
                    height : deviceHeight/26,
                    color: Colors.white,
                  ),
                  Image(
                    image: AssetImage('images/waves.png'),
                    color: Colors.white,
                    height : deviceHeight/26,
                  ),
                  Text(
                    dayName +" "+ date +" "+ monthName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                  Image(
                    image: AssetImage('images/cloudy.png'),
                    height : deviceHeight/26,
                  ),
                  Image(
                    image: AssetImage('images/storm.png'),
                    height : deviceHeight/26,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 15.0),
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
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.yellow,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => ForeCastScreen(temperature: temperature,weatherID: weatherID,)
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



