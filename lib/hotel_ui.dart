import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Hotel_UI(),
        theme: ThemeData(primarySwatch: Colors.orange),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Hotel_UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.search_sharp,), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_sharp), label: "Favorites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 350,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1608198399988-341f712c3711?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG90ZWxyb29tfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                        "DETAIL",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    Positioned(
                      top: 250,
                      left: 0,
                      child: Column(
                        children: const [
                          Text(
                            "park plaza hotel",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.pink),
                          ),
                          Text(
                            "Kakkanad,Kerala",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.pink),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 295,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            height: 25,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[400],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "8.4/98reviews",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Positioned(
                        right: 5,
                        top: 310,
                        child: Icon(
                          Icons.favorite_outline,
                          size: 35,
                          color: Colors.white,
                        ))
                  ],
                ),
                Positioned(
                  top: 350,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                        ),
                        Icon(
                          Icons.star_half_sharp,
                          color: Colors.pink,
                        ),

                        SizedBox(
                          width: 5.0,
                        ),

                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Text(
                                "\$ 200",
                                style: TextStyle(
                                    color: Colors.pink,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Text("/per night"),
                            )
                          ],
                        )
                      ],

                    ),



                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.pink,
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Book Now",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  width: double.infinity,
                  child: Column(
                    children: const [
                      Padding(
                        padding:
                            EdgeInsets.only(right: 240, top: 10, bottom: 10),
                        child: Text(
                          "Description",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          "Park Plaza Hotels & Resorts, formerly Park Plaza International Hotels, Inns and Resorts and commonly known as just Park Plaza, is a hotel chain which runs several hotel groups as franchises. It was established in 1986 as a company and acquired by Olympus Real Estate in 1997. In year 2000, Carlson acquired the Park Plaza Hotels & Resorts as well as sister brand Park Inn. As of 2019, the brands were owned by Radisson Hotel Group.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
