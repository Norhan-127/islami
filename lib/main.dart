import 'package:flutter/material.dart';
import 'package:islami/HomeScreen.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/sura_details/sura_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.route_name: (buildContext) => HomeScreen(),
        SuraDetailsScreen.route_name: (buildContext) => SuraDetailsScreen(),
      },
      initialRoute: HomeScreen.route_name,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}

