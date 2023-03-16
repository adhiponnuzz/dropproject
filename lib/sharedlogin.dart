import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'mydashboard.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: LoginScreen(),
        );

      }));
}

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();
  
  late SharedPreferences logindata;
  late bool newuser;
  
  @override
  void initState(){
    check_if_already_login();
  }
  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    
    newuser = (logindata.getBool('newuser')?? true);
    print('newuser');
    
    if (newuser == false){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>mydashboard()));
    }
    
  }
  @override
  void dispose(){
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 60),
                child: Text(
                  "shared preference",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 60),
                child: Text(
                  "To show shared preference",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TextField(
                  controller: username_controller,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.account_box),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60)),
                      hintText: "Username"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.visibility_off),
                      suffixIcon: const Icon(Icons.visibility_off),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "Password"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20,right: 20,top: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    String username = username_controller.text;
                    String password = password_controller.text;
                    
                    if (username != '' && password !=''){
                      print("successfull");
                      
                      logindata.setBool('newuser', false);
                      logindata.setString('username', username);
                      
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> mydashboard()));
                      
                    }
                    
                  },
                  child: const Text("Login"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(870, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

