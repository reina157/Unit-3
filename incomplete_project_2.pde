//March 12, 2025

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

float sliderX;
float shade;

void setup() {
  size(800,600);
  strokeWeight(3);
  stroke(darkbrown);
  selectedColor= forestgreen;
  sliderX= 350;
}

void draw() {
  background(lightorange);
  line(350,50,400,50);
  circle(sliderX,50,20);
  


  // toolbar 
  fill(grey);
  rect(0,0,800,160);
  
  
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
  
  tactile(100,90,50);
  fill(lightorange);
  circle(100,120,60);
  
  tactile(200,120,60);
  fill(orange);
  circle(200,120,60);
  
  tactile(300,120,60);
  fill(darkbrown);
  circle(300,120,60);
  
  //indicator
  stroke(darkbrown);
  fill(selectedColor);
  square(200,200,380);
  
 
}


 void mouseDragged() {
 }
 
 void mouseReleased() {
   
 }
 
 void controlSlider() {
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
