import 'package:flutter/material.dart';

class MyCustomWidget extends StatelessWidget{
  final Color? bgcolor;
  final  IconData icons;
  VoidCallback? onpress;
  Text? label;

  MyCustomWidget({
    this.bgcolor=Colors.black, required this.icons,this.onpress,this.label});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: ListTile(
        title: label,
        leading: Icon(icons),
        onTap: onpress,
      ),
    );
  }

}