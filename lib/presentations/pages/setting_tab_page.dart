import 'package:flutter/material.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('設定'),
          centerTitle: true,
          elevation: 1,
        ),
      ),
      body: Center(
        child: Text('setting'),
      ),
    );
  }
}
