import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login page"),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Login Page',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box),
                    labelText: "USER",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                  hintText: "Username",
                ),
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.remove_red_eye_rounded),
                  labelText: "Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                hintText: "password"
              ),
            ),
          ),
          Padding(
           padding: const EdgeInsets.only(top: 20.0),
           child:  ElevatedButton(onPressed: () {}, child: const Text('Sign - In'),
            ),
         ),
          const Padding(
            padding: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Text('Not a user ?Try again..!!!'),
          )
        ],
      ),
    );
  }
}
