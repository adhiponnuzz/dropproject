import 'dart:async';
import 'package:device_preview/device_preview.dart';
import 'package:dropproject/Ficon.dart';
import 'package:dropproject/gridview.dart';
import 'package:dropproject/gridview2.dart';
import 'package:dropproject/gridview_custom.dart';
import 'package:dropproject/list_with_custom.dart';
import 'package:dropproject/listcardDemo.dart';
import 'package:dropproject/listdemo.dart';
import 'package:dropproject/second.dart';
import 'package:dropproject/snackdemo.dart';
import 'package:dropproject/tab_in_flutter.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'ListView_with_Bulider.dart';
import 'Shoppigcard.dart';
import 'grid_stack.dart';
import 'gridview_with_count.dart';
import 'gridwith_extend.dart';
import 'gridwithbuilder.dart';
import 'homepage.dart';
import 'loginpage.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: MainScreen(),
    );

  }));
}

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState(){
    Timer(Duration(seconds: 5) ,(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => tabinflutter()),
      );

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body as column/multichild widget
      body: Container(
        height: double.infinity,
        width: double.infinity,
        //color: Colors.lightGreenAccent,
        decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
                image: AssetImage("assets/images/backassimg.jpg"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // Icon(
            //  Icons.ac_unit,
            //  size: 100,
            // ),
            //adding asset image
            Image(
              image: AssetImage(
                  "assets/icons/imgicon.png"),
              height: 60,
              width: 60,
            ),
            Text(
              "MYAPP",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            )
          ],
        ),
      ),
      //body as text in center
      //  body: Center(
      //     child: Text(
      //   "MY APP",
      //   style: TextStyle(
      //        fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
      // )),
      //body as icon in center
      // body: Center(
      //  child: Icon(
      //    Icons.account_circle,
      //  size: 30,
      //    color: Colors.blue,
      //  ),
      // ),
    );
  }
}
