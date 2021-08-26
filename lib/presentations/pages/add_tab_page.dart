import 'package:flutter/material.dart';

class AddTab extends StatelessWidget {
  const AddTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: AppBar(
          title: const Text('登録する'),
          centerTitle: true,
          elevation: 1,
          backgroundColor: Colors.white,
        ),
      ),
      body: Center(
        child: Text('Add'),
      ),
    );
  }
}
