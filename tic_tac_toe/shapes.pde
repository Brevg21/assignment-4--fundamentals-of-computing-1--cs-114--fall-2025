void drawBoard() {
  stroke(0);
  strokeWeight(4);

  line(CELLSIZE, 0, CELLSIZE,CELLSIZE*3);
  line(CELLSIZE*2,0,CELLSIZE*2,CELLSIZE*3);
  line(0,CELLSIZE,CELLSIZE*3,CELLSIZE);
  line(0,CELLSIZE*2,CELLSIZE*3,CELLSIZE*2);
}

void drawMarks() {
  for(int i=0; i<3;i++){
    for(int j =0; j<3; j++){
      if(board[i][j] == X){
        drawX(i,j);
      }
      if (board[i][j] == O){
        drawO(i,j);
      }
    }
  }

}

void drawX(int r, int c){
  float posOne = c * CELLSIZE + CELLSIZE/2;
  float posTwo = r * CELLSIZE + CELLSIZE/2;
  float d = CELLSIZE*0.35;

  strokeWeight(6);
  line (posOne-d, posTwo-d, posOne +d, posTwo+d);
  line (posOne-d,posTwo +d, posOne+d, posTwo-d);
}

void drawO(int r, int c) {
  float posOne = c * CELLSIZE + CELLSIZE/2;
  float posTwo = r * CELLSIZE + CELLSIZE/2;
  float radius = CELLSIZE*0.4;

  strokeWeight(6);
  noFill();
  ellipse(posOne,posTwo, radius*2,radius*2);
}
