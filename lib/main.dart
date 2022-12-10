import 'package:app_hazconta/app/routes/app_pages.dart';
import 'package:app_hazconta/app/utils/dependency_injections.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app/modules/home/home.binding.dart';
import 'app/modules/home/home.widget.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  DependencyInjection.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AC',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Color(0xFF009554),
        primaryColorLight: Color(0xFF00BF53),
        primaryColorDark: Color(0xFF00BF53),
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: HomePage(),
      initialBinding: HomeBinding(),
      getPages: AppPages.pages,
    ) ;
  }
}

