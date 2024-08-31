import 'package:flutter/material.dart';

class ClockPage extends StatelessWidget {
  const ClockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clock'),
      ),
      body: const Center(
        child: Text('Clock Page Content'),
      ),
    );
  }
}
