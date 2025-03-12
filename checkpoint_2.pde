//pallette 
color darkbrown = #463030;
color forestgreen = #AAB3AB;
color yellow = #EBEFC9;
color green = #C4CBB7;
color lightorange = #EEE0B7;
color orange=#E8CAAF;
color white=#FFFFFF;

int toggle,guidelines;

void setup () {
  size(800,600);
  strokeWeight(2);
  textSize(30);
  toggle = 1;
}


void draw() {
  background(forestgreen);
  
  fill(yellow);
  stroke(3);
  rect(100,400,200,100) ;
  
  if (toggle> 0 ) {
  guidelines() ;
  }
}


  void mouseReleased() {
  if (mouseX> 100 && mouseX < 300 && mouseY > 400 && mouseY <500) {
    toggle = toggle * -1;
  }
}
   void guidelines(){
     fill(orange);
     stroke(orange);
     line(0,mouseY,width,mouseY);
     line(mouseX,0,mouseX,height);
   }
