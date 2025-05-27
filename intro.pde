void intro() {

  theme.rewind();
  theme.play();

  background(118, 163, 170);

  
  

  tactile(300, 400, 200, 100);
  rect(300, 400, 200, 100);
  // options
  tactile(600,400,200,100);
  rect(600, 400, 200, 100);
  
  stroke(24, 82, 81);
  strokeWeight(10);
  fill(0);
  textSize(30);
  text("OPTIONS", 600,400);
  text("START", 300, 400);
  text("Clicker Game!", 400, 200);
  fill(255);


  score=0;
  lives=3;
}

void tactile(int x, int y, int w, int h) {
  if (mouseX>x-w/2 && mouseX< x+w/2 && mouseY>y-h/2 && mouseY <y+h/2) {
    stroke(255);
  } else {
    stroke(0);
  }
}

void introClicks() {
  if ( mouseX > 200 && mouseX< 400 && mouseY> 350 && mouseY< 450)
    mode = GAME;
  if( mouseX > 500 && mouseX <800 && mouseY>350 && mouseY <450)
    mode = OPTIONS;
}
