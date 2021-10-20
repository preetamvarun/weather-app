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


  String getDate(){
    var date = DateTime.now();
    String result = DateFormat('EEEE').format(date) +" "+ date.day.toString() + "," + month[date.month.toString()].toString();
    return result;
  }

}