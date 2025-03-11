//pallette 
color darkbrown = #463030;
color forestgreen = #AAB3AB;
color yellow = #EBEFC9;
color green = #C4CBB7;
color lightorange = #EEE0B7;
color orange=#E8CAAF;
color white=#FFFFFF;
color blue = #103590;

float sliderX;
float shade;

void setup() {
  size(800,600);
  strokeWeight(5);
  stroke(orange);
  fill(orange);
  sliderX=400;
  shade = 0;
}

void draw() {
  background(shade);
  shade = map(sliderX,100,700,100,200);
  line(100,300,700,300);
  circle(sliderX,300,50);
  
} 

void mouseDragged() {
 controlSlider();
}

void mouseReleased() {
  controlSlider();
}



void controlSlider () {
  if (mouseX > 100 && mouseX < 700 && mouseY > 275 && mouseY < 325) {
    sliderX = mouseX;
  }
  
}
