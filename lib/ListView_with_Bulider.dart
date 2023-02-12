import 'package:flutter/material.dart';

class List_with_Builder extends StatelessWidget {
  var datas = <String>['Data 1', 'Data 2', 'Data 3', 'Data 4'];
  var color = <int>[800, 700, 400, 500];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView with Builder")),
      body: ListView.separated(
        itemCount: datas.length,
          itemBuilder: (BuildContext,index) {
        return Container(
          height: 100,
          color: Colors.lightGreen[color[index]],
          child: Text(datas[index]),

        );


      }, separatorBuilder: (BuildContext context, int index) {
          return Divider(thickness: 10,color: Colors.purpleAccent[color[index]],
          );
      },),
    );
  }
}
