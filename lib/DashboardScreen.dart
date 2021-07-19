import 'package:flutter/material.dart';
import 'package:uiproject/Constant.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              height: 400,
              color: Colors.green,
              child: Row(
                children: [
                  Text('Dashborad',style:  TextStyle(color: Colors.white),)
                  ,Spacer()
                  ,Expanded(child:TextField(
                    decoration: InputDecoration(
                      fillColor: secondaryColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8)
                      )
                        ,suffixIcon: Container(
                           padding: EdgeInsets.all(8),
                           decoration: BoxDecoration(
                             color: primaryColor
                           ),
                           child:Icon(Icons.search,color: Colors.white,) ,
                    )
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
