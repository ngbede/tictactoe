import 'package:flutter/foundation.dart';

class TicTacToe with ChangeNotifier {
  int _movesPlayed = 0;
  List<String> _board = ["", "", "", "", "", "", "", "", ""];
  List<String> _letters = ["X", "O", "X", "O", "X", "O", "X", "O", "X"];
  bool _win = false;
  void clearBoard() {
    _board = ["", "", "", "", "", "", "", "", ""];
    _movesPlayed = 0;
    _win = false;
    notifyListeners();
  }

  void checkBoard(int position) {
    if ((_board[position].isEmpty) && (_win != true)) {
      _movesPlayed += 1;
      _board[position] = _letters[_movesPlayed - 1];
      notifyListeners();
    }
  }

  String letterAtPosition(int pos) {
    return _board[pos];
  }

  String message() {
    String letter;
    if (_movesPlayed > 8 && _win != true) {
      letter = 'Game ended in a draw!';
    } else if (_win == true) {
      letter = '${_letters[_movesPlayed - 1]} has won the game';
    } else {
      if (_win != true) {
        letter = '${_letters[_movesPlayed]} turn to play';
      }
    }
    return letter;
  }

  void analyseBoard() {
    if ((_movesPlayed > 4) && (_win == false)) {
      if (_board[0].isNotEmpty) {
        if ((_board[0] == _board[1]) && (_board[1] == _board[2])) {
          _win = true;
        } else if ((_board[0] == _board[3]) && (_board[3] == _board[6])) {
          _win = true;
        } else if ((_board[0] == _board[4]) && (_board[4] == _board[8])) {
          _win = true;
        }
      }
      if (_board[8].isNotEmpty) {
        if ((_board[6] == _board[7]) && (_board[7] == _board[8])) {
          _win = true;
        } else if ((_board[2] == _board[5]) && (_board[5] == _board[8])) {
          _win = true;
        }
      }
      if (_board[4].isNotEmpty) {
        if ((_board[1] == _board[4]) && (_board[4] == _board[7])) {
          _win = true;
        } else if ((_board[3] == _board[4]) && (_board[4] == _board[5])) {
          _win = true;
        } else if ((_board[2] == _board[4]) && (_board[4] == _board[6])) {
          _win = true;
        }
      }
    }
  }
}
