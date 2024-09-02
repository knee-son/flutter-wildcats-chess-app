import 'package:flutter/material.dart';
import 'package:wildcats_chess_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WildCats 😺😊',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.amber,
        scaffoldBackgroundColor: Colors.cyan[170],
        // Define other colors
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.blue, // Background color of buttons
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black), // Text color
          bodyMedium: TextStyle(color: Colors.black87),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 110, 9, 41),
          foregroundColor: Colors.white,
        ),
        // Define other theme properties
      ),
      home: const HomePage(),
    );
  }
}
