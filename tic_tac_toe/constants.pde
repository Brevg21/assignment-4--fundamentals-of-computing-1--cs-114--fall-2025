final int EMPTY = 0;
final int X = 1;
  final int O = -1;

  int[][] board = new int[3][3];
  int currentPlayer;
  int gameState;
  final float CELLSIZE = 500.0/3.0;

  final int ONGOING = 0;
  final int X_WIN = 1;
  final int OWIN = -1;
  final int DRAW = 2;
