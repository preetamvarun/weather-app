import 'package:http/http.dart' as http;
import 'dart:convert';
import 'constants.dart';

class NetworkHelper{

  static double temperature = 0;

  Future<double> getCurrentWeatherData() async{
    print("entered into network helper function");
    http.Response res = await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=London&units=metric&appid=$kApiKey'));
    if(res.statusCode == 200){
      print('status code success');
      temperature = jsonDecode(res.body)['main']['temp'];
    }
    else {
      print('status code failure');
      print(res.statusCode);
    }
    return temperature;
  }
}