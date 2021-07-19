import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'Constant.dart';



class appbar extends StatelessWidget {
  const appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  (
      Container(
       decoration: BoxDecoration(
         color: BaseColor,
         boxShadow: [
           BoxShadow(
             color: Colors.grey.withOpacity(0.4),
             spreadRadius: 2,
             blurRadius: 8,
             offset: Offset(0, 2), // changes position of shadow
           ),
         ],
       ),

       child: Column(
         children: [
           Container(
             margin: EdgeInsets.only(top: 16),
             width: double.infinity,
             child: Stack(
               children: [
                 Positioned(
                   left: 8,
                   child: Container(
                     margin: EdgeInsets.only(left: 8),
                     child: Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Container(
                             child:
                     Text('خرمشهر',style: TextStyle(
                       fontSize: 10,
                       color: Colors.black,
                       fontFamily:  'iranyekanbold',
                       decoration: TextDecoration.none,),)
                              ),
                         Icon(Icons.location_pin,color: Colors.black,size: 20,),
                       ],
                     ),
                   ),
                 ),
                 Center(
                   child:
                       Image.asset('assets/facee.png',width: 70,height: 30,)


                 ),
                 Positioned(
                     right: 8,
                     child: Icon(Icons.menu,color: Colors.black,))
               ],
             ),
           ),
           Container(
             margin: EdgeInsets.only(right: 16,bottom: 16,left: 16,top: 16),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(4),
               color: Colors.white
             ),
             child: Container(
               margin: EdgeInsets.symmetric(horizontal: 8),
               child: TextField(
                 textAlign: TextAlign.end,
                 decoration: InputDecoration(
                   border: InputBorder.none,
                   labelStyle:TextStyle(
                       color: Colors.black,
                       fontFamily: 'iranyekanbold',
                       fontSize: 14
                   ) ,
                   hintStyle: TextStyle(
                     color: Colors.black54,
                     fontSize: 12,
                     fontFamily: 'iranyekanbold',
                   ),
                   hintText: '.خدمت مورد نظر خود را جستجو کنید',
                   suffixIcon:  Icon(Icons.search,size: 20,color: Colors.black12,),
                   focusedBorder: InputBorder.none,
                   enabledBorder: InputBorder.none,
                   errorBorder: InputBorder.none,
                   disabledBorder: InputBorder.none,
                 ),
               ),
             ),
             // child: Row(
             //   children: [
             //     TextField(),
             //     Icon(Icons.search,color: Colors.black,)
             //   ],
             // ),
           )

         ],
       ),
     )
    );
  }
}
