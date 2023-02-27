import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: BottomSheetanim(),
        );

      }));
}
class BottomSheetanim extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          RiveAnimation.network("https://rive.app/community/3907-8180-what-we-do/")
        ],
      ),

    );
  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context)=>Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          ListTile(
            title: Text("Shared by"),
          ),
          ListTile(

            title: Text("google"),
          ),
          ListTile(
            title: Text("gmail"),
          )
        ],
      ),
    ));


  }

}
