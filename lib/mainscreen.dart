import 'package:flutter/material.dart';
import 'package:uiproject/Constant.dart';
import 'package:uiproject/DrawerListTile.dart';
import 'package:uiproject/SideBar.dart';

import 'DashboardScreen.dart';


class mainscreen extends StatelessWidget {
  const mainscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: bgcolor,
          child: Row(
            children: [
              Expanded(child: SideBar()),
              Expanded(
                  flex: 5,
                  child: Container(
                   child: DashboardScreen(),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
