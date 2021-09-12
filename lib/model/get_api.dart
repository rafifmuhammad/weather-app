import 'package:http/http.dart' as http;
import 'dart:convert';

class Weather {
  String temp;
  String feelsLike;

  Weather({required this.temp, required this.feelsLike});

  factory Weather.createWeather(Map<String, dynamic> object) {
    return Weather(
      temp: ((object['temp'] - 273.15) as double).toStringAsFixed(0),
      feelsLike: ((object['feels_like'] - 273.15) as double).toStringAsFixed(0),
    );
  }

  static Future<Weather> connectToAPI(String city, String key) async {
    String apiURL = 'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$key';

    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);
    var weatherData = (jsonObject as Map<String, dynamic>)['main'];

    return Weather.createWeather(weatherData);
  }
}
