import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Cashen'),
          centerTitle: true,
          elevation: 1,
        ),
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
