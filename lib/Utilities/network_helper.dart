import 'package:http/http.dart' as http;
import 'dart:convert';
import 'constants.dart';

class NetworkHelper{

  static List<int>forecastedTemperatures = [];

  Future getCurrentWeatherData() async{
    http.Response res = await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=toronto&units=metric&appid=$kApiKey'));
    if(res.statusCode == 200){
       return jsonDecode(res.body);
    }
    else {
      return "404";
    }
  }

  Future getForecastedWeatherData() async{
    http.Response res = await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/forecast?q=toronto&units=metric&appid=$kApiKey'));
    if(res.statusCode == 200){
      return jsonDecode(res.body);
    }
    else{
      return "404";
    }
  }

}