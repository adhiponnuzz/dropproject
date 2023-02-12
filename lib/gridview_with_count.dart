import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: List.generate(20, (index) => const Card(
          child: Center(
            child: Text("hello"),
          ),

        )),
      ),
    );
  }
}
