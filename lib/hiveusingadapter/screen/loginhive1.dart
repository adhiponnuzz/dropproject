import 'package:dropproject/hiveusingadapter/database/DBFunction.dart';
import 'package:dropproject/hiveusingadapter/modelscreen/user_model.dart';
import 'package:dropproject/hiveusingadapter/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Registration.dart';


class Login extends StatelessWidget{
  final email = TextEditingController();
  final pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: email,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "UserName"
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: pass,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                  hintText: "Password"
              ),
            ),
          ),

          ElevatedButton(onPressed: () async{
            final userList= await DataBasee.instance.getUser();
            checkUser(userList);
            email.text = "";
            pass.text  = "";// CHECK THE ENETERED VALUE IS FOUND IN DB

          }, child: Text("lOGIN")),
          const SizedBox(height: 20,),
          TextButton(onPressed: (){
            Get.to(() => Register());
          }, child: Text("Not A User? Register!!"))
        ],
      ),
    );

  }
  Future<void> checkUser(List<User> userList) async{
    final mail = email.text.trim();
    final pwd =  pass.text.trim();
    bool isUserFound = false;
    final validate= await validateLogin(mail,pwd);

    if (validate == true){
      await Future.forEach(userList, (users) {
        if(users.email==mail && users.password==pwd){
          isUserFound = true;

        }else{
          isUserFound = false;
        }
      });
      if(isUserFound= true){
        Get.offAll(()=> Home(email: mail));
        Get.snackbar("Success", "Logined as $mail");

      }else {
        Get.snackbar("Failes", "Login Failed");
      }
    }else {
      Get.snackbar('Error', 'Fields must not be empty');
    }

  }

  Future<bool>validateLogin(String mail, String pwd) async{
    if(mail != '' && pwd != ''){
      return true;
    }else{
      Get.snackbar('Error', 'Field must not be empty');
      return false;
    }
  }

}