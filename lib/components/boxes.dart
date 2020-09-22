import 'package:flutter/material.dart';
import 'package:tictactoe/constant.dart';

class Square extends StatefulWidget {
  final int boxNum;
  Square({this.boxNum});
  @override
  _SquareState createState() => _SquareState();
}

class _SquareState extends State<Square> {
  String letter = "";
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          bool done = game.checkBoard(widget.boxNum);
          if (done) {
            setState(
              () {
                game.analyseBoard();
                letter = game.letters[game.getMovesPlayed() - 1];
                turn = game.message();
                print(game.board);
                print(turn);
                print(game.win);
              },
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            //decoration: BoxDecoration(),
            color: Color(0XFFA7C8D6), //a7c8d6
            height: 100,
            child: Center(
              child: Text(
                letter,
                style: TextStyle(
                    fontFamily: 'MetalMania',
                    fontSize: 50,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
