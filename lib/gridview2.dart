import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: Gridview2(),
        );

      }));
}
class Gridview2 extends StatelessWidget {
  var icon = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.bell,
    FontAwesomeIcons.camera,
    FontAwesomeIcons.star,
    FontAwesomeIcons.wifi,
    FontAwesomeIcons.noteSticky,
    FontAwesomeIcons.phone,
    FontAwesomeIcons.message,
    FontAwesomeIcons.windows,
    FontAwesomeIcons.sackXmark,
    FontAwesomeIcons.volumeMute,
    FontAwesomeIcons.hospital,

  ];
  var color = [
    Colors.purple,
    Colors.lightGreen,
    Colors.pinkAccent,
    Colors.green,
    Colors.blue,
    Colors.deepOrangeAccent,
    Colors.lightGreen,
    Colors.lightGreenAccent,
    Colors.blueGrey,
    Colors.deepPurple,
    Colors.redAccent,
    Colors.yellowAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
      ),
      body: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2,
              mainAxisSpacing: 20,crossAxisSpacing: 20,),
          itemCount: 12,
          itemBuilder: (context, index) {
            return  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(color: Colors.blueGrey,
                      blurRadius: 6,
                      spreadRadius: 5,
                      offset: Offset(3, 5))
                    ],
                    color: color[index],
                    borderRadius: BorderRadius.circular(13),
                  ),

                        child: ListTile(
                          leading: SizedBox(
                            height: 10,
                            width: 10,
                            child: FaIcon(icon[index],size: 30,),
                          ),
                          title: const Text("heart brocken",textAlign: TextAlign.center,),



                        ),
                      ),
            );
            



          }),
    );
  }
}
