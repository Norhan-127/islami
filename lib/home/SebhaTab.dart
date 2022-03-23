import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double angle = 0;
  List<String> tasbehList = [
    'سبحان اللّه',
    'الحمدللّه',
    'لا اله الّا اللّه',
    'لا حول ولا قوة الا باللّه',
    'اللّه اكبر'
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset('assets/images/head_of_seb7a.png'),
              InkWell(
                onTap: () {
                  onTasbehClick();
                },
                child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.1),
                    child: Transform.rotate(
                        angle: angle,
                        child: Image.asset('assets/images/body_of_seb7a.png'))),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Color(0xffcda975),
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              '$counter',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: MyThemeData.lightPrimary,
                borderRadius: BorderRadius.circular(23)),
            child: Text(
              '${tasbehList[index]}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

  void onTasbehClick() {
    counter++;
    if (counter % 33 == 0) {
      index++;
    }
    //عِد ٣٣ بعد اخر item في ال list وبعدين صفر ال index
    if (index % 165 == 0) {
      index = 0;
    }
    setState(() {
      angle += 20;
    });
  }
}
