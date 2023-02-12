import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GridBuilder extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grid with builder')),
      body:  const Center(
        child: FaIcon(FontAwesomeIcons.googleDrive,size: 40,),
      ),
    );

  }



}