import 'package:flutter/material.dart';

class AddTab extends StatelessWidget {
  const AddTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          automaticallyImplyLeading: false,
          title: const Text('Cashen'),
          centerTitle: true,
          elevation: 1,
        ),
      ),
      body: Center(
        child: Text('Add'),
      ),
    );
  }
}
