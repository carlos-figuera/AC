import 'package:app_hazconta/app/modules/home/sidebar/local_widget/list_item_menu.dart';
import 'package:app_hazconta/app/routes/list_menu_drawer.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailItem extends StatelessWidget {
  const DetailItem({
    Key? key,
    required this.item,
  }) : super(key: key);
  final DrawerRoutesDetail item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        item.icon,
      ),
      title: Text(item.title),
      trailing: Icon(Icons.chevron_right),
      onTap: () {
        Get.toNamed(item.namePage);
      },
    );
  }
}

class FatherItem extends StatelessWidget {
  const FatherItem({
    Key? key,
    required this.items,
  }) : super(key: key);

  final DrawerRoutesFather items;

  @override
  Widget build(BuildContext context) {
    List<DrawerRoutesDetail> hijos = items.children;
    return ExpansionTile(
      title: Text(items.title),
      leading: Icon(items.icon),
      children: <Widget>[
        ListItemMenu(itemsDetail: [...hijos]),
      ],
    );
  }
}
