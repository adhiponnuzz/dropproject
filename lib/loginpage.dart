import 'package:dropproject/homepage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var formkey= GlobalKey<FormState>();
  var showpass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login with validation"),
      ),
      body: Form(
        key: formkey,
        child: Column(
            children: [
        const Padding(
        padding: EdgeInsets.only(top: 30),
        child: Text("Login Page"),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.account_box),
            border: OutlineInputBorder()),
          validator: (username){
            if(username!.isEmpty || !username.contains('@')){
              return "enter a valid emailid";
            }else{
              return null;
            }
          },
        ),
      ),
      Padding(
        padding:  EdgeInsets.only(left: 20,right: 20,top: 20),
        child: TextFormField(obscureText: showpass,
          obscuringCharacter: '*',
          decoration:  InputDecoration(
            prefixIcon: Icon(Icons.password),
            suffixIcon: IconButton(onPressed: (){
              setState(() {
                if(showpass){
                  showpass=false;

                }else{
                  showpass=true;
                }

              });

            }, icon: Icon(showpass==true?Icons.visibility_off:Icons.visibility)),
            border: OutlineInputBorder()),
          validator: (password){
          if(password!.isEmpty || password.length<6){
            return "Not a valid password";
          }else{
            return null;
          }
          },
        ),
      ),

         Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: () {
            final valid =formkey.currentState!. validate();
            if(valid){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));

            }else{
              Fluttertoast.showToast(
                  msg: "LOgin failed",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            }

          }, child: const Text("Login")),
        )
        ],
      ),
    ),);
  }
}
