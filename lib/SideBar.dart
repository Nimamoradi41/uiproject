import 'package:flutter/material.dart';
import 'package:uiproject/Constant.dart';

import 'DrawerListTile.dart';


class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgcolor,
      child: Drawer(
        child: Container(
          color: bgcolor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                DrawerHeader(child: FlutterLogo(size: 50,)),
                DrawerListTile(),
                DrawerListTile(),
                DrawerListTile(),
                DrawerListTile(),
                DrawerListTile(),
                DrawerListTile(),
                DrawerListTile(),
                DrawerListTile()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
