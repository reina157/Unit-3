void pause (){
  theme.pause();
  fill(106,23,23);
  triangle(450,300,370,250,370,350);
}

void pauseClicks(){
    if(dist(mouseX,mouseY,750,50)<50){
    mode = GAME;
    }

}
