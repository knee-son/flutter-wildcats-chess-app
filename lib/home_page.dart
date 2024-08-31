import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:wildcats_chess_app/clock_page.dart';
import 'package:wildcats_chess_app/swissmanager_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wildcats Chess App'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Navigation',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Tournament Manager'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SwissManagerPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.timer_outlined),
              title: const Text('Chess Clock'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ClockPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(children: <Widget>[
        Container(
          color: Colors.grey, // Set the background color here
          padding:
              const EdgeInsets.all(16.0), // Optional: Add padding if needed
          child: Image.asset(
            'assets/images/publication_logo_transparent.png',
            fit: BoxFit.contain,
          ),
        ),
        const Text('asdf'),
      ]),
    );
  }
}
