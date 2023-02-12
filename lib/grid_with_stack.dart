import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              color: Colors.teal,
              width: 500,
              height: 500,
            ),
            Positioned(
              left: 20,bottom: 50,
              child: Container(
                color: Colors.tealAccent,
                width: 200,
                height: 200,
              ),
            ),
            const Positioned(
              right: 10,top: 30,
              child: Icon(
                Icons.star,
                color: Colors.lightGreenAccent,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}