import 'package:flutter/material.dart';
import 'package:tictactoe/logic/logic.dart';

Game ticTac = Game();
String letter = '';

class Square extends StatefulWidget {
  final int boxNum;

  const Square({Key key, this.boxNum}) : super(key: key);
  @override
  _SquareState createState() => _SquareState();
}

class _SquareState extends State<Square> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          print('Tap out');
          setState(() {
            if (ticTac.empytSpace(widget.boxNum)) {
              letter = ticTac.playerMove(widget.boxNum);
              ticTac.boardView();
              if (ticTac.played() >= 5) {
                // minimum number of moves to win = 5
                print(ticTac.analyseBoard());
                print(ticTac.played());
              }
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            //decoration: BoxDecoration(),
            color: Color(0XFFA7C8D6), //a7c8d6
            height: 100,
            child: Center(
              child: Text(
                '$letter',
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
