import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: BottomSheeticon(),
        );

      }));
}
class BottomSheeticon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onDoubleTap: (){
            showSheet(context);
          },
          child: Text("click me to show sheet"),
        ),
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
            leading: Logo(Logos.google),
            title: Text("google"),
          ),
          ListTile(
            leading: Logo(Logos.gmail),
            title: Text("gmail"),
          )
        ],
      ),
    ));


  }

}
