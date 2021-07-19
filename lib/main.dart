import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:uiproject/Constant.dart';
import 'package:uiproject/appbar.dart';

import 'mainscreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: bgcolor,
      home: mainscreen(),
    );
  }
}

class dataCategory{
  String title;

  dataCategory(this.title);
}

class MyHomePage extends StatefulWidget {


  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {







  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:  Center(
        child: Text('dssdgsgsagsdgsdfgsgsdf'),
      )
    );

  }
}
