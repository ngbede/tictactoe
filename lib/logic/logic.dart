class Game {
  int _movesPlayed = 0, _swap = 0;
  List<String> _board = ['', '', '', '', '', '', '', '', ''];
  List<String> letters = ['X', 'O'];

  String playerMove(int position) {
    if (_board[position].isEmpty) {
      _board[position] = letters[_swap];
      _movesPlayed++;
      if (_swap == 1) {
        _swap -= 1;
      } else {
        _swap += 1;
      }
      return _board[position];
    } else {
      return 'Invalid Space';
    }
  }

  String whoseTurn() {
    return letters[_swap];
  }

  String justPlayed() {
    return _board[_movesPlayed];
  }

  bool analyseBoard() {
    bool win = false;
    if (((_board[0] == _board[3]) && (_board[3] == _board[6])) ||
        (((_board[0] == _board[1]) && (_board[1] == _board[2])))) {
      win = true;
    } else if (((_board[2] == _board[5]) && (_board[5] == _board[8])) ||
        (((_board[6] == _board[7]) && (_board[7] == _board[8])))) {
      win = true;
    } else if (((_board[3] == _board[4]) && (_board[4] == _board[5])) ||
        (((_board[1] == _board[4]) && (_board[4] == _board[7])))) {
      win = true;
    } else if (((_board[0] == _board[4]) && (_board[4] == _board[8])) ||
        (((_board[2] == _board[4]) && (_board[4] == _board[6])))) {
      win = true;
    }
    return win;
  }

// total number of moves played
  int played() {
    return _movesPlayed;
  }

  bool empytSpace(int pos) {
    bool status = _board[pos].isEmpty ? true : false;
    return status;
  }

  void boardView() {
    print(_board);
  }

  void resetGame() {
    _board = ['', '', '', '', '', '', '', '', ''];
    _movesPlayed = 0;
    _swap = 0;
  }
}
