class TicTacToe {
  int movesPlayed = 0;
  List<String> board = ["", "", "", "", "", "", "", "", ""];
  bool gameEnded = false;
  List<String> letters = ["X", "O", "X", "O", "X", "O", "X", "O", "X"];
  bool win = false;
  void clearBoard() {
    board = ["", "", "", "", "", "", "", "", ""];
    movesPlayed = 0;
    gameEnded = false;
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

  String currentLetter() {
    return letters[movesPlayed - 1];
  }

  void analyseBoard() {
    if ((movesPlayed > 4) && (win == false)) {
      if (board[0].isNotEmpty) {
        if ((board[0] == board[1]) && (board[1] == board[2])) {
          win = true;
          //gameEnded = true;
        } else if ((board[0] == board[3]) && (board[3] == board[6])) {
          win = true;
          //gameEnded = true;
        } else if ((board[0] == board[4]) && (board[4] == board[8])) {
          win = true;
          //gameEnded = true;
        }
      }
      if (board[8].isNotEmpty) {
        if ((board[6] == board[7]) && (board[7] == board[8])) {
          win = true;
          //gameEnded = true;
        } else if ((board[2] == board[5]) && (board[5] == board[8])) {
          win = true;
          //gameEnded = true;
        }
      }
      if (board[4].isNotEmpty) {
        if ((board[1] == board[4]) && (board[4] == board[7])) {
          win = true;
          //gameEnded = true;
        } else if ((board[3] == board[4]) && (board[4] == board[5])) {
          win = true;
          //gameEnded = true;
        } else if ((board[2] == board[4]) && (board[4] == board[6])) {
          win = true;
          //gameEnded = true;
        }
      }
    }
  }
}

// if ((board[0] == board[1]) && (board[1] == board[2])) {
//   win = true;
//   //gameEnded = true;
// } else if ((board[0] == board[3]) && (board[3] == board[6])) {
//   win = true;
//   //gameEnded = true;
// } else if ((board[0] == board[4]) && (board[4] == board[8])) {
//   win = true;
//   //gameEnded = true;
// } else if ((board[3] == board[4]) && (board[4] == board[5])) {
//   win = true;
//   //gameEnded = true;
// } else if ((board[6] == board[7]) && (board[7] == board[8])) {
//   win = true;
//   //gameEnded = true;
// } else if ((board[2] == board[5]) && (board[5] == board[8])) {
//   win = true;
//   //gameEnded = true;
// } else if ((board[1] == board[4]) && (board[4] == board[7])) {
//   win = true;
//   //gameEnded = true;
// } else if ((board[2] == board[4]) && (board[4] == board[6])) {
//   win = true;
//   //gameEnded = true;
// }
