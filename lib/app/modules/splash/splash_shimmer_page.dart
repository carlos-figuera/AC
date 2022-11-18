import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';


class SplashShimmerPage extends StatefulWidget {
  @override
  _SplashShimmerPageState createState() => _SplashShimmerPageState();
}

class _SplashShimmerPageState extends State<SplashShimmerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Shimmer.fromColors(
        baseColor: Colors.black26,
        highlightColor: AppColors.kAinactiColor,
        enabled: true,
        direction: ShimmerDirection.ltr,
        child: Container(
         // height: Responsive.of().hd(por: 80),
          child: ListView.builder(
            itemBuilder: (_, __) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(Get.width * 0.05),
                    child: Container(
                      height: Get.width * 0.20,
                      width: Get.width * 0.20,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          height: 8.0,
                          color: AppColors.kAinactiColor,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.0),
                        ),
                        Container(
                          width: double.infinity,
                          height: 8.0,
                          color: AppColors.kAinactiColor,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.0),
                        ),
                        Container(
                          width: 40.0,
                          height: 8.0,
                          color: AppColors.kAinactiColor,
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            itemCount: 10,
          ),
        ),
      ),
    );
  }
}
