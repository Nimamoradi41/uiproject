import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uiproject/Constant.dart';
import 'package:uiproject/appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
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

  List<dataCategory> datas=[];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    datas.add(dataCategory('نقاشی ساختمان'));
    datas.add(dataCategory('آهنگری'));
    datas.add(dataCategory('کاشی کاری'));
    datas.add(dataCategory('قیر گونی'));
    datas.add(dataCategory('بنایی جزیی'));
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return SafeArea(
      child: Scaffold(
        body:Container(
          width: double.infinity,
          height: double.infinity,
          color: BackColor,
          child: Column(
            children: [
              appbar(),
              ListView.builder(
                  physics:ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: datas.length,
                  itemBuilder: (ctx,index){
                    return Container(
                      margin: EdgeInsets.all(4),
                      child: Card(
                        elevation: ElevatoinApp,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                   margin: EdgeInsets.only(left: 8),
                                  child: Icon(Icons.arrow_back_ios,color: Colors.black26,)),
                              Expanded(child: Container(
                                margin: EdgeInsets.only(right: 8),
                                child:
                              Text(datas[index].title.toString(),
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily:  'iranyekanbold',
                                decoration: TextDecoration.none,),),)),
                              SvgPicture.asset('assets/blacksmith.svg',width: 60,height: 60,)
                            ],
                          ),
                        ),
                      ),
                    );
                  })
            ],
          ),
        )

      ),
    );
  }
}
