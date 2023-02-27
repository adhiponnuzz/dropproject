import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: StageredDemo(),
        );
      }));
}

class StageredDemo extends StatelessWidget {
  var Craxis = [2, 2, 2, 2, 2, 2];
  var Mnaxis = [3, 4, 3, 3, 4, 4];
  var image = [
    "https://media.istockphoto.com/id/515012255/photo/technological-espionage-and-spy.jpg?s=612x612&w=is&k=20&c=6pZY-SlqmpVGi7riP4F7puDQpuyPZbyHq5IL0FxecEE=",
    "https://media.istockphoto.com/id/1368368019/photo/astronaut-standing-on-the-moon-looking-towards-a-distant-earth.jpg?s=2048x2048&w=is&k=20&c=LI8CZqFpwoB6AlrxS-skOfpBcX4DksJhI6b-tyCPVxc=",
    "https://media.istockphoto.com/id/1371752139/photo/spacecraft-orion-on-orbit-of-earth-planet-spaceship-in-space-expedition-to-moon-artemis.jpg?s=612x612&w=is&k=20&c=xvg6PQNl6K78iRaW8hi5x891GzXPxJXzWvdvwh0eTsY=",
    "https://media.istockphoto.com/id/1410106612/photo/skyline-with-empire-state-building.jpg?s=2048x2048&w=is&k=20&c=JCtvAvDuL8O1vOTJoCK8fSV8XsjnrjyXiKtzmHRObvU=",
    "https://media.istockphoto.com/id/652739792/photo/backpacker-on-suspension-bridge-in-rainforest.jpg?s=612x612&w=is&k=20&c=QzdOydURralsy4mfASLoFAE5uy5m5n8JXBoRqaBEc2k=",
    "https://media.istockphoto.com/id/1370069705/photo/human-internal-organs-anatomy.jpg?s=612x612&w=is&k=20&c=vRFUOay2zSHyTZB4pSwilBCc50uOPIHchQJOeH0iM64="
  ];
  var height = <double>[70, 50, 90, 80,70,90];
  var text = [
    "mission impossible",
    "10 interesting things about Earth",
    "Watch the Latest Water Satellite Unfold Itself in Space",
    "Empire State of Mind",
    "Thebmala Eco Tourism",
    "Anatomy of Human Body"
  ];
  var date = [
    "feb 20 2012",
    "July 31 2016",
    "December 28 2022",
    "October 20 2009",
    "june 5 2011",
    "April 9 2002"
  ];
  var author =[
    "Ethan Hunt","2016 Holt john","Andrew Wang","Jay-Z","Prabir Banerjea"," Adam Augustyn","James William"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Staggered Grid"),
        ),
        body: SingleChildScrollView(
          child: StaggeredGrid.count(
              crossAxisCount: 4,
              children: List.generate(6, (index) {
                return StaggeredGridTile.count(
                    crossAxisCellCount: Craxis[index],
                    mainAxisCellCount: Mnaxis[index],
                    child: Card(color: Colors.blueGrey,
                      child: Column(
                        children: [
                          Container(
                            height: height[index],
                            decoration: BoxDecoration(borderRadius:BorderRadius.circular(5) ,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(image[index]))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: RichText(
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                text: TextSpan(
                                    text: "${text[index]}\n",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(date[index]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(author[index]),
                          )
                        ],
                      ),
                    ));
              })),
        ));
  }
}



