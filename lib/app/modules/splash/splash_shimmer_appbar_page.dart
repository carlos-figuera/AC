import 'package:app_hazconta/app/global_widgets/AppBarSelect2.dart';
import 'package:app_hazconta/app/modules/splash/splash_shimmer_page.dart';
import 'package:flutter/material.dart';


class SplashShimmerAppBarPage extends StatefulWidget {
  final String titleHeader;
  //final String ruta;
  SplashShimmerAppBarPage({required this.titleHeader});
  @override
  _SplashShimmerPageState createState() => _SplashShimmerPageState();
}

class _SplashShimmerPageState extends State<SplashShimmerAppBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSelect2(title: widget.titleHeader),
      body: Container(
        //  width: double.infinity,
       // height: Get.height * 0.79,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        //  child: Text(""),
        child: SplashShimmerPage(),
      ),
    );
  }
}
