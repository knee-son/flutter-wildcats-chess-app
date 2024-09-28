import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:wildcats_chess_app/animations.dart';
import 'package:wildcats_chess_app/clock_page.dart';
import 'package:wildcats_chess_app/swissmanager_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wildcats 😺',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            )),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 163, 202, 239),
              ),
              child: Text(
                'Hello, how\'s chess?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
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
      body: Stack(children: <Widget>[
        Container(
          color: const Color.fromARGB(255, 190, 189, 196),

          padding:
              const EdgeInsets.all(16.0), // Optional: Add padding if needed
          height: MediaQuery.of(context).size.height -
              AppBar().preferredSize.height -
              MediaQuery.of(context).padding.top,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(bottom: 60), // Apply 10 pixels of padding
                child: Text(
                  'Shimenet like my app!',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    // fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                  textAlign: TextAlign.center, // Center-align the text
                ),
              ),
              BounceOnTap(
                asset: Image(
                  image: AssetImage(
                      'assets/images/publication_logo_transparent.png'),
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0), // Apply 10 pixels of padding
                child: Text(
                  '“When the game is over, the king and pawn go into the same box.”',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center, // Center-align the text
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
