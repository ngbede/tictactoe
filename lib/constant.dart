import 'logic/brain.dart';
import 'components/board.dart';
import 'package:flutter/material.dart';

TicTacToe game = TicTacToe();
Board board = Board();
String turn = "X turn to play";
Text display = Text(
  turn,
  style: TextStyle(fontSize: 25),
);
