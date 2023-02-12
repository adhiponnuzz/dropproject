import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: ListCardDemo(),
        );

      }));
}

class ListCardDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return Card(
          color: Colors.deepOrangeAccent[800],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image(image: AssetImage("assets/icons/apple.png"),width: 100,height: 100,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      maxLines: 1,
                      text: const TextSpan(
                          text: "name: ",
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: "apple",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ])),
                  RichText(
                      maxLines: 1,
                      text: const TextSpan(
                          text: "unit: ",
                          style: TextStyle(color: Colors.pink),
                          children: [
                            TextSpan(
                              text: "20kg",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ])),
                  RichText(
                      maxLines: 1,
                      text: const TextSpan(
                          text: "price: ",
                          style: TextStyle(color: Colors.purple),
                          children: [
                            TextSpan(
                              text: "300",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ])),
                ],
              ),

              ElevatedButton(
                onPressed: () {},
                child: const Text("Addto cart"),
                style:
                ElevatedButton.styleFrom(backgroundColor: Colors.brown),
              ),],
          ),
        );
      })),
    );
  }
}
