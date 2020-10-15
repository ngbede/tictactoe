import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/logic/brain.dart';

class Square extends StatelessWidget {
  final int boxnum;
  Square({@required this.boxnum});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Provider.of<TicTacToe>(context, listen: false).checkBoard(boxnum);
          Provider.of<TicTacToe>(context, listen: false).analyseBoard();
        },
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            color: Color(0XFFA7C8D6), //a7c8d6
            height: 100,
            child: Center(
              child: Text(
                Provider.of<TicTacToe>(context).letterAtPosition(boxnum),
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
