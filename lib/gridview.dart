import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("grid view"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:  4),
        children: List.generate(10, (index)  {
          return const Card(
            child: Image(image: AssetImage("assets/icons/imgicon.png"),),
          );
        }),
      ),

    );
  }

}