void initializeGame() {
  for (int row=0; row<3; row++){
    for(int column = 0; column <3; column++){
      board[row][column]=EMPTY;
    }
  }
}

void placeMove(int row, int column){
  if (gameState != ONGOING){
    println("The game has already ended");
    return;
  }
  if (board[row][column] != EMPTY) return;

  board[row][column] = O;
  gameState = checkGameState();

  if (gameState == OWIN) {
    println("The player has won");
    return;
  }
  if(gameState == XWIN) {
    println("The computer has won");
    return;
  }
  if (gameState == DRAW) {
    println("No one won");
    return;
  }
  else println("The game in still in progress");

  aiMove();

  gameState = checkGameState();
    if (gameState == OWIN) {
    println("The player has won");
    return;
  }
  if(gameState == XWIN) {
    println("The computer has won");
    return;
  }
  if (gameState == DRAW) {
    println("No one won");
    return;
  }
}

void aiMove(){
  ArrayList<int[]> emptyCells = new ArrayList<int[]>();

  for (int row = 0; row < 3; row++){
    for (int column = 0; column <3; column++){
      if (board[row][column] == EMPTY){
        emptyCells.add(new int[] {row, column});
      }
    }
  }

  if (emptyCells.size() == 0) return;

  int index = int(random(emptyCells.size()));
  int[] cell = emptyCells.get(index);
  board[cell[0]][cell[1]] = X;
}
int switchPlayer(int player) {
  return (player == X) ? O : X;
}

int checkGameState() {
  for (int row = 0; row < 3; row++){
    int sum = board[row][0] + board[row][1] + board [row][2];
    if (sum == 3) return XWIN;
    if (sum == -3) return OWIN;
  }
  for (int column = 0; column <3; column++){
    int sum = board[0][column] + board[1][column] + board [2][column];
    if ( sum ==3) return XWIN;
    if(sum == -3) return OWIN;
  }

  int diagonalOne = board[0][0] + board[1][1] + board [2][2];
  if (diagonalOne == 3)return XWIN;
  if (diagonalOne == -3) return OWIN;

  int diagonalTwo = board[0][2] + board[1][1] + board [2][0];
  if (diagonalTwo == 3)return XWIN;
  if (diagonalTwo == -3) return OWIN;

  for (int row =0; row < 3; row++){
    for(int column = 0; column < 3; column++){
      if(board[row][column]== EMPTY){
        return ONGOING;
      }
    }
  }
  return DRAW;
}
