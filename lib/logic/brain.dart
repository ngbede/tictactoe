class TicTacToe {
  int movesPlayed = 0;
  List<String> board = ["", "", "", "", "", "", "", "", ""];
  List<String> letters = ["X", "O", "X", "O", "X", "O", "X", "O", "X"];
  bool win = false;
  void clearBoard() {
    board = ["", "", "", "", "", "", "", "", ""];
    movesPlayed = 0;
    win = false;
  }

  bool checkBoard(int position) {
    bool updated = false;
    if ((board[position].isEmpty) && (win != true)) {
      updated = true;
      movesPlayed += 1;
      board[position] = letters[movesPlayed - 1];
    }
    return updated; // return true if the board state was updated
  }

  int getMovesPlayed() {
    return movesPlayed;
  }

  String message() {
    String letter;
    if (movesPlayed > 8 && win != true) {
      letter = '${letters[8]} turn to play';
    } else if (win == true) {
      letter = '${letters[movesPlayed - 1]} has won the game';
    } else {
      if (win != true) {
        letter = '${letters[movesPlayed]} turn to play';
      }
    }
    return letter;
  }

  void analyseBoard() {
    if ((movesPlayed > 4) && (win == false)) {
      if (board[0].isNotEmpty) {
        if ((board[0] == board[1]) && (board[1] == board[2])) {
          win = true;
        } else if ((board[0] == board[3]) && (board[3] == board[6])) {
          win = true;
        } else if ((board[0] == board[4]) && (board[4] == board[8])) {
          win = true;
        }
      }
      if (board[8].isNotEmpty) {
        if ((board[6] == board[7]) && (board[7] == board[8])) {
          win = true;
        } else if ((board[2] == board[5]) && (board[5] == board[8])) {
          win = true;
        }
      }
      if (board[4].isNotEmpty) {
        if ((board[1] == board[4]) && (board[4] == board[7])) {
          win = true;
        } else if ((board[3] == board[4]) && (board[4] == board[5])) {
          win = true;
        } else if ((board[2] == board[4]) && (board[4] == board[6])) {
          win = true;
        }
      }
    }
  }
}
