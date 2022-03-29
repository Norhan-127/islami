import 'package:flutter/material.dart';
import 'package:islami/home/Ahadeth/HadethTab.dart';
import 'package:islami/home/Ahadeth/Hadeth_details.dart';

class ItemHadethName extends StatelessWidget {
  Hadeth hadeth;

  ItemHadethName(this.hadeth);

  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetails.route_name,
            arguments: hadeth);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Text(
          hadeth.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}
