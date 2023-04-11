import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../FireHelper.dart';
import 'login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: FireSignUp(),
  ));
}

class FireSignUp extends StatefulWidget {
  @override
  State<FireSignUp> createState() => _FireSignUpState();
}

class _FireSignUpState extends State<FireSignUp> {
  final email = TextEditingController();
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
                controller: email,
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
                  String mail = email.text.trim();
                  String pwd = pass.text.trim();

                  AuthHelper().signUp(email: mail, password: pwd).then((result) {
                    if (result == null) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => FireLogin()));
                    } else {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(result)));
                    }
                  });
                },
                child: Text("SignUp"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
