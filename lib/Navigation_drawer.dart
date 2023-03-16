import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>
          MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Drawer_UI(),
            theme: ThemeData(primarySwatch: Colors.teal),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          ),
    ),
  );
}

class Drawer_UI extends StatelessWidget {
  @override
  var icons = [
    Icons.dashboard_outlined,
    Icons.rocket_launch_outlined,
    Icons.apartment_outlined,
    Icons.line_axis_sharp,
    Icons.person_add_alt_1_outlined,
    Icons.my_library_books_outlined,
    Icons.contact_page_sharp
  ];
  var text = [
    "Dashboard",
    "Projects",
    "Companies",
    "Subscription",
    "Clients",
    "Library",
    "Contact"
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
      ),
      drawer: Drawer(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.greenAccent, Colors.purple, Colors.lightGreenAccent])),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Container(
                    child: const ListTile(
                      leading: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG0BxMnaPM96tex1C5HK_VIWnPxxSRFWhIkg&usqp=CAU"),
                      ),
                      title: Text(
                        "Timothy Donald Cook",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      subtitle: Text(
                        "timcook@gmail.com",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: ListView.builder(
                      itemCount: text.length,
                      itemBuilder: (BuildContextcontext, index) {
                        return ListTile(
                          leading: Icon(
                            icons[index],
                            color: Colors.white,
                          ),
                          title: Text(
                            text[index],
                            style: const TextStyle(color: Colors.white),
                          ),
                        );
                      }),
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Logout"))
              ],
            ),
          )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                height: 250,
                width: 400,
                child: Container(
                  child: const Image(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG0BxMnaPM96tex1C5HK_VIWnPxxSRFWhIkg&usqp=CAU"),
                    fit: BoxFit.fill,
                  ),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: SizedBox(height: 50, width: 380,
              child: Text("Timothy Donald Cook",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(10),
            child: SizedBox(child: Text(
              "Timothy Donald Cook (born November 1, 1960)[1] is an American business executive who has been the chief executive officer of Apple Inc. since 2011. Cook previously served as the company's chief operating officer under its co-founder Steve Jobs.[2]Cook joined Apple in March 1998 as a senior vice president for worldwide operations, and then served as the executive vice president for worldwide sales and operations.[3] He was made the chief executive on August 24, 2011, prior to Jobs' death in October of that year.[4] During his tenure as the chief executive, he has advocated for the political reformation of international and domestic surveillance, cybersecurity, American manufacturing, and environmental preservation. Since 2011 when he took over Apple, to 2020, Cook doubled the company's revenue and profit, and the company's market value increased from 348 billion to 1.9 trillion.",
              style:TextStyle(fontSize: 15),),),
          )
        ],
      ),
    );
  }
}