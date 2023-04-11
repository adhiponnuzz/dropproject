import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: frontPage(),
    routes: {
      "second": (context) => home(),
    },
  ));
}
class frontPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
         Container(
           height: 415,
           width: double.infinity,
           decoration: const BoxDecoration(
               image: DecorationImage(
                 fit: BoxFit.fill,
                 image: NetworkImage(
                     "https://images.unsplash.com/photo-1641154706848-fe27fd366032?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8dG9kb3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
               )),

         ),
          Padding(
            padding: EdgeInsets.only(top: 40,left: 130),
            child: Row(
              children: [
                const Icon(Icons.check_box_outlined,size: 20,color: Colors.green,),
                Text("PLAN. DO. DONE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
              ],
            ),
          ),
         Padding(
           padding: const EdgeInsets.only(top: 50),
           child: ElevatedButton(
             style: ElevatedButton.styleFrom(
               primary: Colors.blueAccent,
               onPrimary: Colors.white,
               shadowColor: Colors.blueAccent,
               elevation: 3,
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(32.0)),
               minimumSize: Size(140, 40),
             ),
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=> home()));
             },
             child: Text('ADD TASK'),
           ),
         ),
       ],
     ),

    );
  }

}