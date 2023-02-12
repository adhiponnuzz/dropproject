import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
        const Center(
        child: Text(
        "MY CONTACTS",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        )),
    Card(
    color: Colors.white,
    child: ListTile(
    leading: CircleAvatar(
    backgroundImage: NetworkImage(
    "https://images.unsplash.com/photo-1623091410901-00e2d268901f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aW5kaWFuJTIwZ2lybHxlbnwwfHwwfHw%3D&w=1000&q=80"),
    ),
    title: (Text("Anjali")),
    subtitle: Text("9988776655"),
    trailing: Wrap(
    children: const [Icon(Icons.message),
    SizedBox(width: 20,),
    Icon(Icons.phone),SizedBox(width: 20,),
      Icon(Icons.keyboard_arrow_right)]),
    ),
    ),
    Card(
    color: Colors.white,
    child: ListTile(
    leading: CircleAvatar(
    backgroundImage: NetworkImage(
    "https://images.unsplash.com/photo-1623060386759-6e1016735859?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGluZGlhbiUyMGdpcmx8ZW58MHx8MHx8&w=1000&q=80"),
    ),
    title: (Text("Mahi")),
    subtitle: Text("9867543210"),
    trailing: Wrap(
    children: const [Icon(Icons.message),
    SizedBox(width: 20,),
    Icon(Icons.phone),SizedBox(width: 20,),
      Icon(Icons.keyboard_arrow_right)

    ]),
    ),
    ),
    Card(color: Colors.white,
    child: ListTile(leading: CircleAvatar(
    backgroundImage: NetworkImage(
    "https://images.unsplash.com/photo-1623091411395-09e79fdbfcf3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aW5kaWFuJTIwZ2lybHxlbnwwfHwwfHw%3D&w=1000&q=80"),),
    title: (Text("Jo")),
    subtitle: Text("9934568899"),
    trailing: Wrap(
    children: const [Icon(Icons.message),
      SizedBox(width: 20,),
      Icon(Icons.phone),SizedBox(width: 20,),
      Icon(Icons.keyboard_arrow_right)]),
    ),
    ),
            Card(color: Colors.white,
              child: ListTile(leading: CircleAvatar(
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1599475735868-a8924c458792?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGJveSUyMHBvc2V8ZW58MHx8MHx8&w=1000&q=80"),
            ),
                title: (Text("Sreekuttan")),
                subtitle: Text("7025348761"),
                trailing: Wrap(
                  children: const [Icon(Icons.message),
                    SizedBox(width: 20,),
                    Icon(Icons.phone),SizedBox(width: 20,),
                    Icon(Icons.keyboard_arrow_right)
                  ],

                ),
              ),),
            Card(color: Colors.white,
              child: ListTile(leading: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1623230590824-f39e31a0a608?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kaWFuJTIwYm95fGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
              ),
                title: (Text("VAISHAK")),
                subtitle: Text("9933291010"),
                trailing: Wrap(
                  children: const [Icon(Icons.message),
                    SizedBox(width: 20,),
                    Icon(Icons.phone),
                    SizedBox(width: 20,),
                    Icon(Icons.keyboard_arrow_right)

                  ],

                ),
              ),),

    ],
    )
    ,
    );
  }
}
