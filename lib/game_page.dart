import 'package:flutter/material.dart';
import 'boxes.dart';

class GameBoard extends StatefulWidget {
  @override
  _GameBoardState createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 100),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: <Widget>[
              Square(
                boxNum: 0,
              ),
              Square(
                boxNum: 1,
              ),
              Square(
                boxNum: 2,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: <Widget>[
              Square(
                boxNum: 3,
              ),
              Square(
                boxNum: 4,
              ),
              Square(
                boxNum: 5,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: <Widget>[
              Square(
                boxNum: 6,
              ),
              Square(
                boxNum: 7,
              ),
              Square(
                boxNum: 8,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
