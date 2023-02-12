import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class grid_extent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: GridView.extent(maxCrossAxisExtent: 70,mainAxisSpacing: 20,crossAxisSpacing: 20,
    children: [
      Container(
        child: Column(
          children: [
            Text("IMAGE 1"),
            Image.asset("assets/icons/apple.png",width: 50,height: 40,),
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Text("Image 2"),
            Image.asset("assets/icons/imgicon.png",width: 50,height: 40,),
          ],
        ),
      )
    ],
    ),
  );
  }

}