import 'package:flutter/material.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({Key? key}) : super(key: key);

  @override
  _SettingTabState createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  int _value = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: AppBar(
          title: const Text('設定画面'),
          centerTitle: true,
          elevation: 1,
          backgroundColor: Colors.white,
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('わーい'),
            Text('わっしょい'),
            Text('イェイ'),
          ],
        ),
      ),
    );
  }
}
