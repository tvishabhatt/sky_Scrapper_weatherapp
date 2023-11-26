import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:sky_pr5/Current.dart';
import 'package:sky_pr5/Forecast.dart';
import 'package:sky_pr5/HomePage.dart';
import 'package:sky_pr5/Location.dart';
import 'package:sky_pr5/SignUpResponse.dart';
import 'package:http/http.dart' as http;


class WeatherProvider extends ChangeNotifier {


  late SignUpResponse _signUpResponse;
  SignUpResponse get signUpResponse => _signUpResponse;

  Future<void> mainuri() async {

    var url = Uri.parse('http://api.weatherapi.com/v1/forecast.json?key=cfb128b183094c3880f32113232111&q=$cityname=1&aqi=no&alerts=no');
    print("city name <<<< $cityname");
    var response = await http.get(url);

    if (response.statusCode == 200) {
      print("responsee <<<< ${response.body}");
      Map<String, dynamic> jsonmap = json.decode(response.body);
      Location location = Location.fromJson(jsonmap['location']);
      Current current = Current.fromJson(jsonmap['current']);
      Forecast forecast=Forecast.fromJson(jsonmap['forecast']);
      _signUpResponse = SignUpResponse(location: location, current: current,forecast: forecast);
      notifyListeners();
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}