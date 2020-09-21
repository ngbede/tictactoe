import 'package:flutter/material.dart';
import 'screens/game_page.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: WelcomePage(),
        ),
      ),
      routes: {'/page1': (context) => GameBoard()},
    );
  }
}
