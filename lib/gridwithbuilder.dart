import 'package:flutter/material.dart';

class GridBuildDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("grid view 1"),

      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20
      ),

          itemCount: 50,
          itemBuilder: (context, index){
        return const Image(image: AssetImage("assets/icons/imgicon.png "));
          }),
    );
  }

}