import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tictactoe/components/card.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('images/background.jpg'),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Cards(
              text: 'New Game',
              funct: () {
                Navigator.pushNamed(context, '/page1');
              }),
          Cards(
            text: 'Quit Game',
            funct: () {
              SystemNavigator.pop(); // quit the app
            },
          ),
          Cards(
            text: 'About Me',
          ),
        ],
      ),
    );
  }
}
