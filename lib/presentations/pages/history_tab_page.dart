import 'package:flutter/material.dart';

class HistoryTab extends StatelessWidget {
  const HistoryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('履歴一覧'),
          centerTitle: true,
          elevation: 1,
        ),
      ),
      body: Center(
        child: Text('History'),
      ),
    );
  }
}
