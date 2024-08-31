import 'package:flutter/material.dart';

class SwissManagerPage extends StatelessWidget {
  const SwissManagerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Players'),
      ),
      body: const Center(
        child: Text('Players Page Content'),
      ),
    );
  }
}
