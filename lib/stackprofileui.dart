import 'package:device_preview/device_preview.dart';
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
          home: Stackprofile(),
        );
      }));
}
class Stackprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text("Profile"),
          actions: const [Icon(Icons.more_vert_rounded)],
        ),
        body: Stack(children: [
          Column(
            children: [
              Container(
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2q7uXKDFgzj44v_8xn7yj3CjIqfGRPnplDg&usqp=CAU")))),
              Container(
                height: 491,
                color: Colors.black54,
              )
            ],
          ),
          const Positioned(
            top: 188,
            left: 138,
            child: CircleAvatar(
              radius: 62,
              backgroundColor: Colors.black54,
            ),
          ),
          const Positioned(
            top: 190,
            left: 140,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1624823221364-8313c83ad314?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80"),
              radius: 60,
            ),
          ),
          const Positioned(
            top: 230,
            left: 15,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 25,
              child: Icon(Icons.message),
            ),
          ),
          const Positioned(
            top: 230,
            right: 15,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 25,
              child: Icon(Icons.add),
            ),
          ),
          const Positioned(
              top: 320,
              left: 155,
              child: Text(
                " Oliver",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),
          const Positioned(
            top: 355,
            left: 150,
            child: Text(
              "Model/Celebrity",
              style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            right: 30,
            bottom: 30, child: Stack(
            children:<Widget> [
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.edit_outlined, color: Colors.blueAccent),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor: Colors.black54, // <-- Button color
                  foregroundColor: Colors.red, // <-- Splash color
                ),
              )

            ],
          ),
          )
          //CircleAvatar()
        ]

        )


    );
  }
}