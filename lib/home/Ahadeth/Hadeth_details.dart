import 'package:flutter/material.dart';
import 'package:islami/home/Ahadeth/HadethTab.dart';
import 'package:islami/home/Ahadeth/item_verse_hadeth.dart';

class HadethDetails extends StatelessWidget {
  static String route_name = 'Hadeth details';
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)?.settings.arguments as Hadeth;
    verses = hadeth.content;
    return SafeArea(
      child: Stack(
        children: [
          Image.asset(
            'assets/images/main_background.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Scaffold(
            appBar: AppBar(
              title: Text(
                hadeth.title,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            body: verses.length == 0
                ? Center(
                    child: CircularProgressIndicator(
                      color: Color(0xff242424),
                    ),
                  )
                : ListView.builder(
                    itemBuilder: (_, index) {
                      return ItemVerseHadeth(verses[index]);
                    },
                    itemCount: verses.length,
                  ),
          )
        ],
      ),
    );
  }
}
