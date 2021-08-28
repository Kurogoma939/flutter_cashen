import 'package:flutter/material.dart';

import 'app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'cashen',

      ///通常テーマ
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          fontFamily: 'MPLUSRounded',
          accentColor: Colors.black87),

      ///ダークテーマ
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.yellow,
        fontFamily: 'MPLUSRounded',
      ),

      ///ホームの指定
      home: CashenHome(),
    );
  }
}
