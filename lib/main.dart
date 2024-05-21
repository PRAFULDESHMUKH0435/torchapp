import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

import 'SplashScreen.dart';
import 'homescreen.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
