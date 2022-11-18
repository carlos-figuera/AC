import 'package:app_hazconta/app/modules/home/home.controller.dart';

import 'package:app_hazconta/app/modules/home/sidebar/local_widget/list_item_menu.dart';
import 'package:app_hazconta/app/theme/Responsive.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'MenuPage',
      init: HomeController(),
      builder: (_) => Drawer(
        child: Container(


          height: Responsive.of().hd(por: 90),
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/default-avatar.png'),
                  backgroundColor:AppColors.kPrimaryColor ,


                ),
                accountName: Text("Pedro Perez"),
                accountEmail: Text("Figuerac21@gmail.com"),
                decoration: BoxDecoration(
                  color: AppColors.kPrimaryColor,
                ),
              ),
              Expanded(
                child: ListItemMenu(),
              ),
              SafeArea(
                bottom: true,
                top: false,
                left: false,
                right: false,
                child: ListTile(
                  leading: Icon(Icons.exit_to_app_sharp),
                  title: Text('Salir'),
                  onTap: (){
                    Get.toNamed(AppRoutes.LOGIN);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
