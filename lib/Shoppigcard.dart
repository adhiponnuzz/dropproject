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
          home: Shopping(),
        );

      }));
}

class Shopping extends StatelessWidget {
  var image = [
    "https://images.unsplash.com/photo-1584917865442-de89df76afd3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGFuZGJhZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1400&q=60",
    "https://media.istockphoto.com/id/1278067767/photo/croatian-beach-mirroring-in-sunglasses-on-towel.jpg?b=1&s=170667a&w=0&k=20&c=JlTIfgHfmopbyIoSDHUtSWn-EVNxVnzJyFgWEcGiDkU=",
    "https://media.istockphoto.com/id/1397067200/photo/a-brown-belt-with-a-metal-buckle.jpg?b=1&s=170667a&w=0&k=20&c=WhizAD097FsCPKT5b7jg6oZdRgT_ubfy_ugFP6xvwDw=",
    "https://images.unsplash.com/photo-1636103952204-0b738c225264?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "https://images.unsplash.com/photo-1632974754836-5aec43c7e3de?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGVhcmluZ3N8ZW58MHx8MHx8&auto=format&fit=crop&w=1400&q=60",
    "https://images.unsplash.com/photo-1582966772680-860e372bb558?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHNvY2t8ZW58MHx8MHx8&w=1000&q=80"
  ];

  var datas = ["Bag", "Sunglass", "Belt", "Necklace", "Earrings", "Socks"];
  var price = <String>['120.00', '58.00', '35.00', '98.00', '34.00', '12.00'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_sharp),
        title: const Center(
            child: Text(
          "SHRINE",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
        )),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 40,
          ),
          Icon(Icons.filter_list_sharp),
        ],
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
          itemCount: image.length,
          itemBuilder: (context, index) {
            return Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(image[index])),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5, bottom: 5),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            datas[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "\$${price[index]}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
