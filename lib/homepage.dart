import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Welcome user",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
        ),
      ),


    );
  }

}