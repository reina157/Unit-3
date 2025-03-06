//March 6, 2025

//Variables for color selection
color selectedColor;
//pallette 
color darkbrown = #463030;
color forestgreen = #AAB3AB;
color yellow = #EBEFC9;
color green = #C4CBB7;
color lightorange = #EEE0B7;
color orange=#E8CAAF;

void setup() {
  size(800,600);
  strokeWeight(2);
  stroke(darkbrown);
  selectedColor = forestgreen;
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
  
  //indicator
  fill(selectedColor);
  square(200,200,380);
 
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
