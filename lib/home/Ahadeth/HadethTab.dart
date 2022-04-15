import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/home/Ahadeth/item_hadeth_name.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> myAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (myAhadeth.isEmpty) {
      readHadethFile();
    }
    return Container(
      child: Column(
        children: [
          Image.asset('assets/images/hadeth_header_logo.png'),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
          Text(
            //AppLocalizations.of(context)!.ahadeth,
            "Ahadeth",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: myAhadeth.length,
              itemBuilder: (context, index) {
                return ItemHadethName(myAhadeth[index]);
              },
              separatorBuilder: (buildContext, index) {
                return Divider(
                  color: Theme.of(context).primaryColor,
                  thickness: 3,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void readHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadethText/ahadeth.txt');
    List<String> ahadeth = fileContent.trim().split(
        '#\r\n'); //كدا كل string في ال ليست دي عبارة عن الاحديث الاول،بعدين التاني وهكذا بقا
    //همسك ليستة الاحاديث دي اقسمها ل حديث حديث في سترينج صغير
    for (int i = 0; i < ahadeth.length; i++) {
      String allHadeth = ahadeth[i];
      if (allHadeth.isEmpty) continue;
      List<String> lines =
          allHadeth.split('\n'); //list فيها عند كل لاين بقا عنصر واحد
      if (lines[0].isEmpty) {
        lines.removeAt(0);
      }
      String title = lines[0];
      lines.removeAt(0);
      Hadeth hadeth = Hadeth(title, lines);
      myAhadeth.add(hadeth);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth(this.title, this.content);
}
