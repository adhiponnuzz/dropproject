import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Farmers_Fresh(),
        theme: ThemeData(primarySwatch: Colors.green),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Farmers_Fresh extends StatefulWidget {
  @override
  State<Farmers_Fresh> createState() => _Farmers_FreshState();
}

class _Farmers_FreshState extends State<Farmers_Fresh> {
  var img = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRABZ97HcNBF2fT1c_jAt3yT3cFn8DTrafYcg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsT2XojYzFRufc8Ui8rKs4DzdDCeUXK9CL7g&usqp=CAU"
  ];

  var img1 = [
    "https://media.istockphoto.com/id/1247073860/photo/healthy-fresh-organic-vegetables-in-a-crate-isolated-on-white-background.jpg?s=2048x2048&w=is&k=20&c=wiBD3dU0VaQk3xpZafHi016a1CMG1SdTgqE06ILV_Ms=",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6MJcEtHh3oVt8AwEJNaH7R8d8beIPtKFAPA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyqPAgdIWaDy8VYE8azssaTNd9ziSvYLHZAg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4K_M4U4uoNWHr8t877eaPzDtZnDY5I2mh9A&usqp=CAU",
    "https://cdn.xxl.thumbs.canstockphoto.com/i-took-spinach-in-a-white-background-stock-photograph_csp7828129.jpg",
    "https://media.istockphoto.com/id/1318418165/photo/variety-of-spices-on-wooden-kitchen-table.jpg?s=612x612&w=is&k=20&c=8T1mbjiAs7T1X7MwbpRLX8pQtB3O_rjWav2fOFZjlLQ=",
  ];

  var txt = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutrition Chargers",
    "Packed Flavors"
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.lightGreen,
        buttonBackgroundColor: Colors.lightGreen,
        backgroundColor: Colors.green[100]!,
        index: index,
        onTap: (taped_index) {
          setState(() {
            index = taped_index;
          });
        },
        items: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: const [Icon(Icons.home_outlined), Text("Home")],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: const [Icon(Icons.shopping_cart_outlined), Text("Cart")],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: const [Icon(Icons.account_circle_outlined), Text("Account")],
            ),
          ),
        ],
      ),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          title: const Text(
            "FARMERS FRESH ZONE",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 5),
              child: Icon(Icons.location_on_outlined),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 5),
              child: Text("Kochi"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_drop_down_outlined),
            )
          ],
          bottom: AppBar(
            title: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                height: 45,
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "Search here for Vegetables,Fruits...",
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 20,
                  //color: Colors.black
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.lightGreen[100],
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(child: Text("VEGETABLES")),
                      ),
                      Container(
                        width: 80,
                        height: 110,
                        decoration: BoxDecoration(
                            color: Colors.lightGreen[100],
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(child: Text("FRUITS")),
                      ),
                      Container(
                        width: 80,
                        height: 110,
                        decoration: BoxDecoration(
                            color: Colors.lightGreen[100],
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(child: Text("EXOTIC")),
                      ),
                      Container(
                        width: 100,
                        height: 110,
                        decoration: BoxDecoration(
                            color: Colors.lightGreen[100],
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(child: Text("FRESH CUTS")),
                      ),
                    ],
                  ),
                ),
              ),
            ])),
        SliverList(
            delegate: SliverChildListDelegate([
              CarouselSlider.builder(
                  itemCount: 2,
                  itemBuilder: (BuildContext, index, realindex) {
                    return Container(
                      height: 600,
                      width: 500,
                      child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(img[index]),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    // height: 300,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 1,
                    //onPageChanged: callbackFunction,
                    scrollDirection: Axis.vertical,
                  ))
            ])),
        SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.timer_sharp,
                                  size: 40, color: Colors.green[200]),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5, bottom: 8),
                              child: Text("30MINS DELIVERY",
                                  style: TextStyle(fontSize: 12)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.spatial_tracking_outlined,
                                  size: 40, color: Colors.green[200]),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5, bottom: 8),
                              child: Text("TRACEABILTY",
                                  style: TextStyle(fontSize: 12)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.local_convenience_store_rounded,
                                  size: 40, color: Colors.green[200]),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 8),
                              child: Text("LOCAL SOURCING",
                                  style: TextStyle(fontSize: 12)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ])),
        SliverList(
            delegate: SliverChildListDelegate([
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 15),
                child: Text(
                  "SHOP BY CATEGORY",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )
            ])),
        SliverList(
            delegate: SliverChildListDelegate([
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Container(
                    height: 400,
                    child: GridView.count(
                        crossAxisCount: 3,
                        children: List.generate(
                            6,
                                (index) => Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                              child: Column(
                                children: [
                                  Container(
                                      height: 80,
                                      width: 120,
                                      child: Image(
                                        image: NetworkImage(img1[index]),
                                        fit: BoxFit.fill,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(txt[index]),
                                  )
                                ],
                              ),
                            ))),
                  ),
                ),
              ),
            ]))
      ]),
    );
  }
}