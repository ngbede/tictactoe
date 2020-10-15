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
                boxnum: 0,
              ),
              Square(
                boxnum: 1,
              ),
              Square(
                boxnum: 2,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: <Widget>[
              Square(
                boxnum: 3,
              ),
              Square(
                boxnum: 4,
              ),
              Square(
                boxnum: 5,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: <Widget>[
              Square(
                boxnum: 6,
              ),
              Square(
                boxnum: 7,
              ),
              Square(
                boxnum: 8,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
