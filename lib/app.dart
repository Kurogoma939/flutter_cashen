// パッケージ
import 'package:cashen/presentations/widgets/BottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'presentations/pages/add_tab_page.dart';
import 'presentations/pages/calendar_tab_page.dart';
import 'presentations/pages/history_tab_page.dart';
import 'presentations/pages/home_tab_page.dart';
import 'presentations/pages/setting_tab_page.dart';

class CashenHome extends StatefulWidget {
  @override
  _CashenHomeState createState() => _CashenHomeState();
}

class _CashenHomeState extends State<CashenHome> {
  ///初期インデックス(Homeを指定）
  int index = 0;

  ///ページリストの表示
  final tabs = <Widget>[
    const HomeTab(),
    CalendarTab(),
    const HistoryTab(),
    const SettingTab(),
  ];

  ///タブの切り替え
  void onChangedTab(int index) {
    setState(() {
      this.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[index],
      bottomNavigationBar: BottomTabWidget(
        index: index,
        onChangedTab: onChangedTab,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddTab(),
              ));
        },
        child: Icon(FontAwesomeIcons.plus),
        backgroundColor: Colors.yellow,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
