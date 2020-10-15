import 'package:flutter/material.dart';
import 'package:tictactoe/components/actionbutton.dart';
import 'package:tictactoe/components/board.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/logic/brain.dart';
import 'package:flutter/services.dart';

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
              Provider.of<TicTacToe>(context).message(),
              style: TextStyle(fontSize: 25),
            ),
            Board(),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
              child: Row(
                children: [
                  ActionButton(
                    name: 'New Game',
                    funct: () {
                      Provider.of<TicTacToe>(context, listen: false)
                          .clearBoard();
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ActionButton(
                    name: 'Quit',
                    funct: () {
                      SystemNavigator.pop(); // quit the app
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
