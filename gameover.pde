void gameover () {
  background(225,225,225);
  theme.pause();
  gameover.play();
  text("GAME OVER",400,300);
 // if(score> highscore){
  //highscore = score; 
 // }
}
 
void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
}
