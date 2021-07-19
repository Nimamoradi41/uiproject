import 'package:flutter/material.dart';


class DrawerListTile extends StatelessWidget {
  const DrawerListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: (){},
        horizontalTitleGap: 0.0,
        leading: Icon(Icons.style ,color: Colors.white,),
        title: Text('Dashboard',style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
