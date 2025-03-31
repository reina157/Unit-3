//Variables for color selection
color selectedColor;
//pallette 
color darkbrown = #462530;
color forestgreen = #AAB3AB;
color yellow = #EBEFC9;
color green = #C4CBB7;
color lightorange = #EEE0B7;
color orange=#E8CAAF;
color white=#FFFFFF;
color grey = #6C6363;

float sliderX;
float shade;

void setup() {
  size(800,600);
  strokeWeight(3);
  stroke(darkbrown);
  selectedColor= forestgreen;
  sliderX= 267;
}

void draw() {
  
  line(350,50,400,50);
  circle(sliderX,50,20);
  


  // toolbar 
  fill(grey);
  rect(0,0,800,150);
  
  //slider
  line(235,40,370,40);
  circle(sliderX,40,30);
  
  
  //buttons
  tactile(50,40,25);
  fill(forestgreen);
  circle(50,40,50);
 
  tactile(120,40,25);
  fill(green);
  circle (120,40,50);
 
 
  tactile(190,40,25);
  fill(yellow);
  circle (190,40,50);
  
  tactile(50,110,25);
  fill(lightorange);
  circle(50,110,50);
  
  tactile(120,110,25);
  fill(orange);
  circle(120,110,50);
  
  tactile(190,110,25);
  fill(darkbrown);
  circle(190,110,50);
}

 void controlSlider(){
   if (mouseX>235 && mouseX<370 && mouseY> 55);
 }
 
  void tactile (int x, int y, int r) {
  if (dist(x,y,mouseX,mouseY)< r) {
    stroke(white);
  } else {
    stroke(darkbrown);
  }
}

 void mouseDragged() {
   line(pmouseX,pmouseY,mouseX,mouseY);
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
