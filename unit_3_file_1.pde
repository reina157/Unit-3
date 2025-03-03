//March 3, 2025

//pallette 
color darkbrown = #463030;
color forestgreen = #AAB3AB;
color yellow = #EBEFC9;
color green = #C4CBB7;
color lightorange = #EEE0B7;

void setup() {
  size(800,600);
  strokeWeight(2);
  stroke(darkbrown);
  
}


void draw() {
  background(lightorange);
 
  //buttons
  fill(forestgreen);
  circle(200,100,100);
 
  fill(green);
  circle (400,100,100);
  
  fill(yellow);
  circle (600,100,100);
  
}

void mouseReleased() {
  if(dist(100,100,mouseX, mouseY) < 50) {
  
}
}
