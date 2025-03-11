//March 11, 2025

//Variables for color selection
color selectedColor;
//pallette 
color darkbrown = #463030;
color forestgreen = #AAB3AB;
color yellow = #EBEFC9;
color green = #C4CBB7;
color lightorange = #EEE0B7;
color orange=#E8CAAF;
color white=#FFFFFF;
color grey = #6C6363;


void setup() {
  size(800,600);
  strokeWeight(3);
  stroke(darkbrown);
  selectedColor= forestgreen;
}

void draw() {
  background(lightorange);

  // toolbar 
  fill(grey);
  rect(0,0,800,150);
  
  //buttons
  
  tactile(100,50,50);
  fill(forestgreen);
  circle(100,50,60);
 
  tactile(200,50,50);
  fill(green);
  circle (200,50,60);
 
 
  tactile(300,50,50);
  fill(yellow);
  circle (300,50,60);
  
  tactile(
  
  //indicator
  stroke(darkbrown);
  fill(selectedColor);
  square(200,200,380);
 
}


void tactile(int x, int y, int z){
if (dist(x,y,mouseX,mouseY)< z) {
    stroke(white);
  } else{
    stroke(darkbrown);
  }
}

void mouseReleased() {
  //yellow button
  if (dist(600,100,mouseX,mouseY)< 50) {
    selectedColor=yellow;
  }
  //green button
  if(dist(400,100,mouseX,mouseY)<50){
    selectedColor=green;
  }
  
  //forest green button
  if(dist(200,100,mouseX,mouseY)<50){
    selectedColor=forestgreen;
  }
}
