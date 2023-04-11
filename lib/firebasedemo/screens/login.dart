import 'package:dropproject/firebasedemo/screens/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../FireHelper.dart';
import 'homee.dart';


class FireLogin extends StatefulWidget {


  @override
  State<FireLogin> createState() => _FireLoginState();
}

class _FireLoginState extends State<FireLogin> {
  final mail = TextEditingController();
  final pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: TextField(
                controller: mail,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "Email",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular((20)))
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: TextField(
                controller: pass,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    labelText: "password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular((20)))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
                onPressed: () {
                  String eemail = mail.text.trim();
                  String pwd = pass.text.trim();

                  AuthHelper().signUp(email: eemail, password: pwd).then((result) {
                    if (result == null) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    } else {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(result)));
                    }
                  });
                },
                child: Text("login"),
              ),
            ),
            TextButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FireSignUp()));
            }, child: Text("Signup Here!!"))
          ],
        ),
      ),
    );
  }
}