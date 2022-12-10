import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

import '../../models/Bestweather/Bestweather.dart';

class BestWeatherApi {
 Future< List<Bestweather>> getWeather() async {
    var url = Uri.parse(
        'https://bestweather.p.rapidapi.com/weather/11.0124023,-63.8144785?unitGroup=us');
    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url, headers: {
      'X-RapidAPI-Key': '110118f3c3msh6e52e428b6768a8p17353djsn89b9ad7fc888',
      'X-RapidAPI-Host': 'bestweather.p.rapidapi.com'
    });
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      var itemCount = jsonResponse['days'];
      print('Number of books about http: $itemCount.');

      return (jsonResponse['days'] as List)
          .map((json) => Bestweather.fromJson(json))
          .toList();
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return [];

    }
  }
}
