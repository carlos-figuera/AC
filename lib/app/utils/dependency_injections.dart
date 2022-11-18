
import 'package:app_hazconta/app/data/providers/local/sqlite/db.services.dart';
  import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:app_hazconta/app/data/providers/remote/bestWeather_api.dart';

import '../data/providers/local/sqlite/canchasSqlite/canchas.sqlite.dart';
import '../data/repository/remote/BestWeather_repository.dart';

class DependencyInjection {
  static void init() {
    //******************************
    // Tool Provider
    //******************************
    Get.lazyPut<FlutterSecureStorage>(
      () => FlutterSecureStorage(),
      fenix: true,
    );


    //******************************
    // Local Providers
    //******************************




    Get.lazyPut<DbDataSource>(
      () => DbDataSource(),
      fenix: true,
    );

    //******************************
    // Api Providers
    //******************************
    Get.lazyPut<BestWeatherApi>(
      () => BestWeatherApi(),
      fenix: true,
    );



    Get.lazyPut<CanchasSQLite>(
      () => CanchasSQLite(),
      fenix: true,
    );

    //******************************
    // Repositorios
    //******************************
    Get.lazyPut<BestWeatherRepository>(
      () => BestWeatherRepository(),
      fenix: true,
    );



  }
}
