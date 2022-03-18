import 'package:flutter/material.dart';
import 'package:islami/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:
      {
        HomeScreen.route_name: (BuildContext) => HomeScreen(),
      },
      initialRoute:HomeScreen.route_name ,
    );
  }
}

