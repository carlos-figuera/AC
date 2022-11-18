 import 'package:app_hazconta/app/data/providers/remote/bestWeather_api.dart';
import 'package:get/get.dart';

import '../../models/Bestweather/Bestweather.dart';

class BestWeatherRepository {
  final BestWeatherApi _api = Get.find<BestWeatherApi>();


  Future< List<Bestweather>> getWeather({userEmail,userPassword}) async => _api.getWeather( );


}