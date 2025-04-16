//april 16

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
float thickness;

PImage cow;
boolean cowOn; ///true false

void setup() {
  size(800, 600);
  stroke(darkbrown);
  selectedColor= forestgreen;
  sliderX = 267;
  cow = loadImage("Cow.png");
  cowOn= false;
  thickness=4;
}

void draw() {

  thickness= map(sliderX, 235, 370, 1, 20);


  // toolbar
    strokeWeight(4);
  fill(grey);
  stroke(darkbrown);
  rect(0, 0, 800, 150);

  //indicator
  fill(selectedColor);
  rect(400, 20, 30, 50);
  
  //strokweight indicator
  fill(0);
  strokeWeight(2);
  rect(360,100,50,thickness);
  
  //stamp
  tactile(260, 70, 80, 70);
  cowOnOff();
  fill(255);
  rect(260, 70, 80, 70);
  image(cow, 265, 75, 70, 70);
  
  //slider
  tactile(267, 40, 15);
  line(235, 40, 370, 40);
  circle(sliderX, 40, 30);


  //buttons
  tactile(50, 40, 25);
  fill(forestgreen);
  circle(50, 40, 50);

  tactile(120, 40, 25);
  fill(green);
  circle (120, 40, 50);


  tactile(190, 40, 25);
  fill(yellow);
  circle (190, 40, 50);

  tactile(50, 110, 25);
  fill(lightorange);
  circle(50, 110, 50);

  tactile(120, 110, 25);
  fill(orange);
  circle(120, 110, 50);

  tactile(190, 110, 25);
  fill(darkbrown);
  circle(190, 110, 50);

  //new button
  tactile(460, 50, 80, 50);
  fill(142, 149, 178);
  rect(460, 50, 80, 50);
  fill(0);
  textSize(30);
  text("NEW", 470, 85);
  
  //save button
  tactile(560,50,80,50);
  fill(75,165,92);
  rect(560, 50, 80, 50);
  fill(0);
  textSize(30);
  text("SAVE", 570, 85);
  
  //load button
  tactile(660,50,80,50);
  fill(75,165,131);
  rect(660, 50, 80, 50);
  fill(0);
  textSize(30);
  text("LOAD", 670, 85);

  stroke(selectedColor);
}



/////
void controlSlider() {
  if (mouseX >235 && mouseX < 370 && mouseY>25 && mouseY<55) {
    sliderX=mouseX;
  }
}





//////
void tactile (int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY)< r) {
    stroke(white);
  } else {
    stroke(darkbrown);
}
}




//////
void mouseDragged() { ///////draw line
 controlSlider(); ///moving slider
if(mouseY>140){
 if (cowOn == false) {
    strokeWeight(thickness);
    line(pmouseX,pmouseY, mouseX, mouseY);
  } else {
    image(cow, mouseX, mouseY, thickness*10, thickness*10);
  }
}
}




/////
void mouseReleased() {
  controlSlider(); ///moving slider

  //yellow button
  if (dist(190, 40, mouseX, mouseY)< 25) {
    selectedColor=yellow;
  }
  //green button
  if (dist(120, 40, mouseX, mouseY)<25) {
    selectedColor=green;
  }

  //forest green button
  if (dist(50, 40, mouseX, mouseY)<25) {
    selectedColor=forestgreen;
  }

  //light orange button
  if (dist(50, 110, mouseX, mouseY)<25) {
    selectedColor=lightorange;
  }
  //orangebutton
  if (dist(120, 110, mouseX, mouseY)<25) {
    selectedColor=orange;
  }

  //dark brown button
  if (dist(190, 110, mouseX, mouseY)<25) {
    selectedColor=darkbrown;
  }
  ///cow on and off
  if (mouseX >260 && mouseX < 340 && mouseY >70 && mouseY <140) {
    cowOn= !cowOn;
    
  }

  //new background
  if (mouseX > 460 && mouseX < 540 && mouseY >50 && mouseY < 100) {
    background(white);
  }
 
  //save button
  if(mouseX> 560 && mouseX<640 && mouseY>50 && mouseY<100) {
    selectOutput("Choose a name for new image file", "saveImage");
  }
  
  // Load button
  if(mouseX>660 && mouseX< 740 && mouseY>50 && mouseY<100) {
    selectInput("Pick an image to load","openImage");
  }
  
}

///////

void saveImage(File f) {
  if(f != null) {
    PImage canvas = get (0,150,800,450);
    canvas.save(f.getAbsolutePath());
  }
}

/////

void openImage(File f) {
  if ( f != null) {
    //KLUDGE
    int n=0;
    while (n<10) {
      PImage pic = loadImage(f.getPath());
      image(pic,0,150);
      n=n+1;
    }
  }
}


///////
void tactile (int x, int y, int w, int h) {
  if (mouseX > x && mouseX< x+w && mouseY > y && mouseY <y+h) {
    stroke(white);
  } else {
    stroke(darkbrown);
  }
}





////

void cowOnOff() {
  if (cowOn == true) {
    stroke(255,0,0);
    strokeWeight(5);
  } else {
    stroke(darkbrown);
    strokeWeight(5);
  }
}
