import 'package:http/http.dart' as http;
import 'dart:convert';
import 'constants.dart';

class NetworkHelper{

  Future getCurrentWeatherData() async{
    http.Response res = await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=London&units=metric&appid=$kApiKey'));
    if(res.statusCode == 200){
       return jsonDecode(res.body);
    }
    else {
      return "404";
    }
  }
}