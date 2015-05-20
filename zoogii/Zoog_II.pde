void setup() {
  size(600,600);
}

void draw() {
  background(0,180,0);
  frameRate(70);
  zoog(mouseX,mouseY,color(255,180,0));
  zoog(mouseX-50,mouseY,color(66,52,100));
  zoog(mouseX+50,mouseY,color(128,55,0));
 
  //Ground
  rect(300,599,600,60);
  //House
  fill(180,0,0);
  rect(100,494,150,150);
  //Roof
  fill(150);
  triangle(15,419,100,350,195,419);
  //Sun
  fill(255,255,0);
  ellipse(20,20,75,75);

}

void zoog(int xpos, int ypos,color c1) {
   ellipseMode(CENTER);
  rectMode(CENTER);
  
  //Body
  stroke(0);
  fill(c1);
  rect(xpos,ypos,20,100);
  
  //Head
  stroke(0);
  fill(220,220,0);
  ellipse(xpos,ypos-50,60,60);
  
  //Eyes
  fill(0);
  ellipse(xpos-15,ypos-50,16,32);
  ellipse(xpos+15,ypos-50,16,32);
  
  //legs and Arms
  stroke(0);
  line(xpos-10,ypos+50,xpos-32,ypos+70);
  line(xpos+10,ypos+50,xpos+32,ypos+70);
  line(xpos-10,ypos,xpos-20,ypos+20);
  line(xpos+10,ypos,xpos+20,ypos+20);
}

