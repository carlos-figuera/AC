

import 'package:get/route_manager.dart';

import 'modules/home.routes.dart';
import 'modules/init.routes.dart';
import 'modules/login.routes.dart';


class AppPages {
  static final List<GetPage> pages = [
    ...InitRoutes.pages,
    ...HomeRoutes.pages,

    ...LoginRoutes.pages,

  ];
}
