import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/sura_details/item_verse.dart';
import 'package:provider/provider.dart';

import '../home/provider/themeProvider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const route_name = 'sura-details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsAgs;
    var themeProvider = Provider.of<ThemeProvider>(context);
    if (verses.isEmpty) loadFile(args.index);
    return Stack(
      children: [
        Image.asset(
          themeProvider.getBackgroundImage(),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              args.name,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: verses.length == 0
              ? Center(
                  child: CircularProgressIndicator(
                    color: Color(0xff242424),
                  ),
                )
              : ListView.separated(
                  separatorBuilder: (buildContext, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      height: 1,
                      color: Theme.of(buildContext).primaryColor,
                    );
                  },
                  itemBuilder: (_, index) {
                    return ItemVerse(verses[index]);
                  },
                  itemCount: verses.length,
                ),
        )
      ],
    );
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsAgs {
  int index;
  String name;

  SuraDetailsAgs(this.index, this.name);
}
