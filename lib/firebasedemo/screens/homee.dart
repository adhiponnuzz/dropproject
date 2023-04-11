import 'package:flutter/material.dart';

import '../FireHelper.dart';
import 'login.dart';

class Home extends StatefulWidget {


  @override
  State<Home> createState() => _FireLoginState();
}

class _FireLoginState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome"),

      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        AuthHelper().signOut().then((value) =>
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => FireLogin())));
      }, child: const Text("signout"),),
    );
  }
}
