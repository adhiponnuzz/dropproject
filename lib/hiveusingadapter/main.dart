import 'package:dropproject/hiveusingadapter/screen/loginhive1.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'modelscreen/user_model.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
   Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('user');
  runApp(GetMaterialApp(home : Login()));
}

