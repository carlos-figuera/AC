import 'package:app_hazconta/app/routes/app_routes.dart';
import 'package:flutter/material.dart';


class DrawerRoutesFather {
  final IconData icon;
  final String title;
  final List<DrawerRoutesDetail> children;

  DrawerRoutesFather({
    required this.icon,
    required this.title,
    required this.children,
  });
}

class DrawerRoutesDetail {
  final IconData icon;
  final String title;
  final String namePage;

  DrawerRoutesDetail({
    required this.icon,
    required this.title,
    required this.namePage,
  });
}

final List<DrawerRoutesFather> drawerRoutesPages = <DrawerRoutesFather>[
//****************************************************************
// Operaciones
//****************************************************************/
  DrawerRoutesFather(
    icon: Icons.monetization_on_outlined  ,
    title: 'Reservaciones',
    children: [
      DrawerRoutesDetail(
        icon: Icons.trending_up,
        title: 'Crear',
        namePage: AppRoutes.LOGIN,
      ),


     /* DrawerRoutesDetail(
        icon: Icons.send,
        title: 'Remisiones',
        namePage: AppRoutes.RemissionIndex,
      ),
      DrawerRoutesDetail(
        icon: Icons.add_shopping_cart,
        title: 'Compras',
        namePage: AppRoutes.ShoppingIndex,

      )*/
    ],
  ),



  //****************************************************************
  // Configuraciones
  //****************************************************************/

 
];