import 'package:app_hazconta/app/modules/home/home.binding.dart';
import 'package:app_hazconta/app/modules/home/home.widget.dart';
import 'package:get/get.dart';
import '../app_routes.dart';

class HomeRoutes {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),

  ];
}
