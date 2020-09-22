import 'package:flutter/material.dart';
import 'package:tictactoe/components/boxes.dart';

class Board extends StatefulWidget {
  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
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
