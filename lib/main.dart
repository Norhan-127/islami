import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/HomeScreen.dart';
import 'package:islami/home/Ahadeth/Hadeth_details.dart';
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
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English, no country code
        Locale('ar'),
      ],
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.route_name: (buildContext) => HomeScreen(),
        SuraDetailsScreen.route_name: (buildContext) => SuraDetailsScreen(),
        HadethDetails.route_name: (buildContext) => HadethDetails(),
      },
      initialRoute: HomeScreen.route_name,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}

