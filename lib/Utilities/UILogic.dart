import 'package:intl/intl.dart';

class UI{

  static Map<String,String> month = {
    "1" : "January",
    "2"  : "February",
    "3"  : "March",
    "4"  : "April",
    "5"  : "May",
    "6"  : "June",
    "7"  : "July",
    "8"  : "August",
    "9"  : "September",
    "10" : "October",
    "11" : "November",
    "12" : "December"
  };

  static List<int>forecastTemps = [];
  static List<String> forecastDates = [];
  static List<String> forecastTimes = [];
  static List<int> forecastWeatherIds = [];

  static String getCurrentImageName(int weatherID){

    String imageName = "";

    if(weatherID < 300){
      imageName = "images/thunderStorm.png";
    }
    else if(weatherID < 600){
      imageName = "images/rain.png";
    }
    else if(weatherID < 700){
      imageName = "images/snow.png";
    }
    else if(weatherID < 800){
      imageName = "images/windy.png";
    }
    else if(weatherID == 800){
      imageName = "images/clear-sky.png";
    }
    else if(weatherID < 804){
      imageName = "images/cloudy.png";
    }
    else{
      imageName = "images/model.png";
    }
    return imageName;
  }


  static String getForecastImageName(int i){
    String imageName = "";
    if(forecastWeatherIds[i] < 300){
      imageName = "images/thunderStorm.png";
    }
    else if(forecastWeatherIds[i] < 600){
      imageName = "images/rain.png";
    }
    else if(forecastWeatherIds[i] < 700){
      imageName = "images/snow.png";
    }
    else if(forecastWeatherIds[i] < 800){
      imageName = "images/windy.png";
    }
    else if(forecastWeatherIds[i] == 800){
      imageName = "images/clear-sky.png";
    }
    else if(forecastWeatherIds[i] < 804){
      imageName = "images/cloudy.png";
    }
    else{
      imageName = "images/model.png";
    }

    return imageName;
  }


  String getDate(){
    var date = DateTime.now();
    String result = DateFormat('EEEE').format(date) +" "+ date.day.toString() + "," + month[date.month.toString()].toString();
    return result;
  }

}