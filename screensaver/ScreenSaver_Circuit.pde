//Lines

//I HAVE DIVIDED BY ZERO! ...AND GOT AWAY WITH IT! XD    jk

Lines[] myLines=new Lines[20];
float xpos;
float ypos;
float strokeW;
float pointCount;
float rnum;

void setup() {
  background(0, 120, 50);
  //size(960, 500);
  size(displayWidth, displayHeight);
  //myLines1= new Lines(random(width),random(height),random(1,5),random(1,20));
  for (int i=0; i<myLines.length; i++) {
    //myLines[i] = new Lines(random(width), random(height), random(1, 5), random(1, 20),0);
    myLines[i] = new Lines(random(width), random(height), random(1, 5), random(1, 80), color(0));
  }
  //xpos=random(width);
  //ypos=random(height);
}

void draw() {
  frameRate(10);
  //myLines1.display();
  for (int i=0; i<myLines.length; i++) {
    Lines iLines=myLines[i];
    if (frameCount>500) {
      frameCount=0;
      background(0, 120, 50);
      //backgroundChange();
      }
       /*if(frameCount>500) {
        frameCount=0;
        background(100,100,0);
    }*/
    iLines.display();
  }
  /*
  strokeW=random(1,10);
   pointCount=random(1,20);
   stroke(0);
   strokeWeight(strokeW);
   moveRight(xpos,ypos,pointCount);
   */
}

void backgroundChange() {
  rnum=random(1,4);
  if(rnum==1) {
    background(0);
  } else if(rnum==2) {
    background(200,180,0);
  } else if(rnum==3) {
    background(100,100,0);
  }
}


