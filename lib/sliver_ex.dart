
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
          home: sliver_ex(),
        );

      }));
}
class sliver_ex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: CustomScrollView(
         slivers: [
           SliverAppBar(
             floating: false,
             pinned: true,
             title: Text("sliver appbar"),
             actions: [
               IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
               IconButton(onPressed: (){}, icon: Icon(Icons.favorite))
             ],
             bottom: AppBar(
               elevation: 0,
               title: Container(
                 width: double.infinity,
                 height: 40,
                 color: Colors.white,
                 child: const TextField(
                   decoration: InputDecoration(
                     hintText: 'search here',
                         prefixIcon: Icon(Icons.search),
                     suffixIcon: Icon(Icons.camera_alt)
                   ),
                 ),

               ),
             ),
           ),
           SliverList(delegate: SliverChildBuilderDelegate((context, index){
             return Container(
               height: 300,
               child: const Center(
                 child: Text("INSIDE SLIVER",style: TextStyle(fontSize: 30),),
               ),
             );
           },childCount: 10),)
         ],
       ),

     );
  }

}
