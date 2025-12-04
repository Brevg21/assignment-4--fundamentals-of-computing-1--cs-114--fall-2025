void setup(){
  size(500, 500);
}

void draw() {
  background(240);
  drawBoard();
  drawMarks();
}

void keyPressed() {
  if (key >= '0' && key <='8') {
    int cell = key - '0';
    int row = cell/3;
    int collumn = cell % 3;
    placeMove(row, collumn);
  }
  else println("You did not press a key between 0 and 8");
}
