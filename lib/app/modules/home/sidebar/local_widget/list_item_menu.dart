

import 'package:app_hazconta/app/modules/home/sidebar/local_widget/item_menu.dart';
import 'package:app_hazconta/app/routes/list_menu_drawer.dart';
import 'package:flutter/material.dart';

class ListItemMenu extends StatelessWidget {
  final List<DrawerRoutesFather>? itemsFather;
  final List<DrawerRoutesDetail>? itemsDetail;
  const ListItemMenu({Key? key, this.itemsFather, this.itemsDetail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Object flag;
    bool dependencies = false;
    if (itemsFather != null) {

      dependencies = true;
      flag = itemsFather!;
      flag as List<DrawerRoutesFather>;

    } else if (itemsDetail != null) {

      dependencies = true;
      flag = itemsDetail!;
      flag as List<DrawerRoutesDetail>;

    } else {

      flag = drawerRoutesPages;
      flag as List<DrawerRoutesFather>;

    }
    return ListView.separated(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      separatorBuilder: (context, i) => Divider(),
      itemCount: (flag as List).length,
      itemBuilder: (context, i) {
        if (!dependencies) return FatherItem(items: (flag as List)[i]);
        return DetailItem(item: (flag as List)[i]);
      },
    );
  }
}
