import 'package:flutter/material.dart';

class ListDetail extends StatefulWidget {
  const ListDetail({Key? key}) : super(key: key);

  @override
  _ListDetailState createState() => _ListDetailState();
}

class _ListDetailState extends State<ListDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: AppBar(
          title: const Text('登録履歴'),
          centerTitle: true,
          elevation: 1,
          backgroundColor: Colors.white,
        ),
      ),
      body: Center(
        child: Text('detail'),
      ),
    );
  }
}
