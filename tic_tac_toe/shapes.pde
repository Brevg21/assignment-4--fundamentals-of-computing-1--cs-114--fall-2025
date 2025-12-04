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

void drawX(int row, int column){
  float axisOne = column * CELLSIZE + CELLSIZE/2;
  float axisTwo = row * CELLSIZE + CELLSIZE/2;
  float diameter = CELLSIZE*0.35;

  strokeWeight(6);
  line (axisOne-diameter, axisTwo-diameter, axisOne + diameter, axisTwo+diameter);
  line (axisOne- diameter,axisTwo + diameter, axisOne + diameter, axisTwo - diameter);
}

void drawO(int row, int column) {
  float axisOne = column * CELLSIZE + CELLSIZE/2;
  float axisTwo = row * CELLSIZE + CELLSIZE/2;
  float radius = CELLSIZE*0.4;

  strokeWeight(6);
  noFill();
  ellipse(axisOne,axisTwo, radius*2,radius*2);
}
