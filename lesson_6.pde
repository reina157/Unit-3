//may27

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//sound
Minim minim;
AudioPlayer theme,bump,gameover;



//variables
float x, y, d;
float vx,vy; //velocity
int score, lives;

//mode variables
int mode;
final int INTRO=1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER=4;
final int OPTIONS=5;




void setup(){
  size(800, 600);
  mode = INTRO;
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
  
  // target setup
  x= width/4;
  y= width/4;
  d = 100;
  vx= random(-7,7);
  vy = random (-7,7);
  score = 0;
  lives = 3;
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  gameover = minim.loadFile("FAILURE.wav");
  bump = minim.loadFile("SUCCESS.wav");
  
}


void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER){
    gameover();
  }  else if (mode == OPTIONS) {
   options(); 
  } else {
    println("Mode errors:" + mode);
  } 
}
