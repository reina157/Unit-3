color darkbrown = #310405;
color green = #05430F;
color yellow = #D9E535;
color lightorange = #EEE0B7;
color orange=#E8CAAF;
color white=#FFFFFF;
color grey = #6C6363;
color blue = #72CBFA;
color darkblue= #146F3F;

float x=0;
float y=0;
float s=0;

void setup() {
  size(800, 600);
  background(120, 191, 237);
  fill(108,103,103);
  rect(0, 450, 800, 600);
  fish(200, 300, 5);
  fish(0, 0, 3);
  fish(0, 0, 2);
  bubbles(0,0,2);
  bubbles(30,30,3);
  bubbles(40,40,4);
  bubbles(1,1,1);
  bubbles(0,0,3);
  
  
  
 float x, y;
  x=50;
  y=450;
  s=1;
  plant(50, 450, 1);
  plant(350, 450, 1);
  
  while (s<3) {
   plant (x, y, s);
   s=s+random(0, 1);
   x=x+random(0, 600);
    y=y+random(0, 150);
  }if (x>=800) {
    x=50;
 }
  if (y>=600) {
    y=450;
  }
  
   
  
}



void plant(float x, float y, float s) {
  pushMatrix();


  translate(x, y);
  circle(0,0,10);
  branch();
  leaves();
  popMatrix();
}

void branch() {
  fill(85,69,69);
  strokeWeight(2);
  triangle(0, 10, -10, 40, 10, 40);
  triangle(40, -5, 25, 50, 55, 50);
  strokeWeight(1);
   int h = -10;
  while (h <= 10) {
     line(0, 15, h, 40);
     h = h + 5;
}
}


void leaves() {
  fill(green);
  ellipse(0, 0, 50, 50);
  ellipse(40, 0, 70, 70);
}








void fish(int x, int y, int s) {
  pushMatrix();

  translate(random(1, 800), random(1, 450));
  scale(random(1, 5));
  tail();
  body();
  eye();
  fin();
  popMatrix();
}

void body() {

  fill(random(0, 255), random(0, 255), random(0, 255));
    ellipse(0, 0, 30, 20);
}


void tail() {
  fill(random(0, 255), random(0, 255), random(0, 255));
  triangle(0, 0, 25, -8, 25, 8);
  
  strokeWeight(1);
  int h = -8;
  while (h <= 8) {
     line(0, 0, 25, h);
     h = h + 2;
  }
}

void eye() {
  fill(0);
  ellipse(-8,-2,2,2);
  
}

void fin() {
  line(0,0,10,0);
  line(0,3,10,0);
  
}








void bubbles(float x, float y, float s){
  
 
  pushMatrix();
  
  translate(random(1,800), random(1,450));
  scale(random(1,3));
  bubble();
  
  
  popMatrix();
  
}

void bubble (){
  
  strokeWeight(2);
  stroke(62, 150, 203);
  fill(174, 217, 242);
  ellipse(20,20,5,5);
  stroke(0);
  
  stroke(white);
  strokeWeight(0.5);
int h = 19;
  while (h <= 22) {
    fill(87,193,222);
     ellipse(20,h,0.5,0.5);
     h = h + 1;
  }
  stroke(0);
}
