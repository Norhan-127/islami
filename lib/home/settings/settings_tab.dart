import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/settings/themeBottomSheet.dart';

class SettingTab extends StatefulWidget {
  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Theme',
            style: Theme.of(context).textTheme.headline6,
          ),
          InkWell(
            onTap: () {
              showThemeBottomsheet();
            },
            child: Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Theme.of(context).primaryColor),
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Text('Light'),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Text(
            'Language',
            style: Theme.of(context).textTheme.headline6,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Theme.of(context).primaryColor),
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Text('English'),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottomsheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildeContext) {
          return ThemeBottomSheet();
        });
  }
}
