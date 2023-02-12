import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class grid_custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 20),
          childrenDelegate: SliverChildBuilderDelegate((context, index){
            return Image(image: AssetImage("assets/images/backassimg.jpg"));


      },
    )
      ),
    );
  }
}
