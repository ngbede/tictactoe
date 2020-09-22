import 'package:flutter/material.dart';
import 'package:tictactoe/components/actionbutton.dart';
import 'package:tictactoe/constant.dart';

class GameBoard extends StatefulWidget {
  @override
  _GameBoardState createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              turn,
              style: TextStyle(fontSize: 25),
            ),
            board,
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
              child: Row(
                children: [
                  ActionButton(
                    name: 'New Game',
                    funct: () {
                      print('New Game');
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ActionButton(
                    name: 'Quit',
                    funct: () {
                      print('Quit');
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
