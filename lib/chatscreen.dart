import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: const [
          Card(
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1519764622345-23439dd774f7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80"),
              ),
              title: Text("Sreejith",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              subtitle: Text("hello",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
              trailing: Text("12:00 pm"),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1553860214-87b92d6c1e22?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8&w=1000&q=80"),
              ),
              title: Text("Anjali",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              subtitle: Text("Always smile",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
              trailing: Text("11:00 am"),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Z2lybHMlMjBwaG90b3xlbnwwfHwwfHw%3D&w=1000&q=80"),
              ),
              title: Text("jyothi",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              subtitle: Text("smiling stars",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
              trailing: Text("10:50 am"),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1464863979621-258859e62245?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGdpcmwlMjBiZWF1dGlmdWx8ZW58MHx8MHx8&w=1000&q=80"),
              ),
              title: Text("Mahima",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              subtitle: Text("where are you",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
              trailing: Text("12:00 pm"),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1492288991661-058aa541ff43?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGhhbmRzb21lJTIwYm95fGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
              ),
              title: Text("Ajay",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              subtitle: Text("good morning",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
              trailing: Text("8:00 am"),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://media.istockphoto.com/id/1162358018/photo/young-brazilian-man-wearing-blue-t-shirt-standing-over-isolated-white-background-happy-face.jpg?b=1&s=170667a&w=0&k=20&c=rpsVTqveKxqJN3rq1Z1yf84C4iFpQ48IJUXHuxzunU4="),
              ),
              title: Text("Vaishak",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              subtitle: Text("good morning",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
              trailing: Text("7:00 am"),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1604073536770-8a33e332f830?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGJveXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
              ),
              title: Text("Vishak",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              subtitle: Text("good morning",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
              trailing: Text("7:00 am"),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1604073536770-8a33e332f830?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGJveXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
              ),
              title: Text("amal",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              subtitle: Text("good morning",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
              trailing: Text("7:00 am"),
            ),
          )
        ],
      ),



    );
  }
}
