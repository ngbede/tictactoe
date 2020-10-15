import 'package:flutter/material.dart';
import 'screens/game_page.dart';
import 'screens/welcome_screen.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/logic/brain.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TicTacToe>(
      create: (context) => TicTacToe(),
      child: MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: WelcomePage(),
          ),
        ),
        routes: {'/page1': (context) => GameBoard()},
      ),
    );
  }
}
