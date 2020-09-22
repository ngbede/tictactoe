class TicTacToe {
  int movesPlayed = 0;
  List<String> board = ["", "", "", "", "", "", "", "", ""];
  bool gameEnded = false;
  List<String> letters = ["X", "O", "X", "O", "X", "O", "X", "O", "X"];

  void clearBoard() {
    board = ["", "", "", "", "", "", "", "", ""];
    movesPlayed = 0;
  }

  bool checkBoard(int position) {
    bool updated = false;
    if (board[position].isEmpty && gameEnded != true) {
      updated = true;
      movesPlayed += 1;
      board[position] = letters[movesPlayed - 1];
    }
    return updated; // return true if the board state was updated
  }

  int getMovesPlayed() {
    return movesPlayed;
  }

  String currentLetter() {
    return letters[movesPlayed - 1];
  }

  void analyseBoard() {
    bool win = false;
    if ((movesPlayed > 4) && (gameEnded == false)) {
      if ((board[0] == board[1]) && (board[1] == board[2])) {
        win = true;
        gameEnded = true;
      } else if ((board[0] == board[3]) && (board[3] == board[6])) {
        win = true;
        gameEnded = true;
      } else if ((board[0] == board[4]) && (board[4] == board[8])) {
        win = true;
        gameEnded = true;
      } else if ((board[3] == board[4]) && (board[4] == board[5])) {
        win = true;
        gameEnded = true;
      } else if ((board[6] == board[7]) && (board[7] == board[8])) {
        win = true;
        gameEnded = true;
      } else if ((board[2] == board[5]) && (board[5] == board[8])) {
        win = true;
        gameEnded = true;
      } else if ((board[1] == board[4]) && (board[4] == board[7])) {
        win = true;
        gameEnded = true;
      } else if ((board[2] == board[4]) && (board[4] == board[6])) {
        win = true;
        gameEnded = true;
      }
    }
  }
}
