import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'chatscreen.dart';
void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          theme: ThemeData(colorScheme: ColorScheme.fromSwatch().copyWith(primary: Color(
              0xFF00695C))),
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: tabinflutter(),
        );

      }));
}
class tabinflutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("whatsapp"),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 20),
            Icon(Icons.search),
            SizedBox(width: 20),
            PopupMenuButton(itemBuilder: (context){
              return [
                const PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("New broadcast")),
                PopupMenuItem(child: Text("Linked devices")),
                PopupMenuItem(child: Text("Starred messages")),
                PopupMenuItem(child: Text("Payments")),
                PopupMenuItem(child: Text("Settings")),
              ];
            })
          ],
          bottom: const TabBar(
            labelPadding: EdgeInsets.zero,
            isScrollable: true,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.green,



            tabs: [
            Tab(icon: Icon(Icons.people),),
            Tab(text: "Chats",),
            SizedBox(width: 10,),
            Tab(text: "Status",),
            SizedBox(width: 10,),
            Tab(text: "Calls",)

          ],),
        ),
        body: TabBarView(
          children: [
            ChatScreen(),

          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {},
        child: const Icon(Icons.message),),
      ),
    );
  }

}