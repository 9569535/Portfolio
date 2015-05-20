void setup() {
  size(1500,500);
  //text("Fahrenheight to Kelvin converter",900,20);
  
}

void drawReference(int xpos, int ypos) {
  stroke(200);
  line(xpos-50,ypos,1400,ypos);
  for(int i=0; i<1350; i=i+100) {
    text(i, xpos+i-8,ypos);
    line(xpos+i,ypos,xpos+i,ypos+5);
  }
}

void draw() {
  background(120);
  text("K",15,45);
  text("Fahrenheight To Kelvin Converter by Kadin Reese",450,20);
  drawReference(100,50);
  //text("Fahreheight value = " + int(mouseX-100),30,120);
  text("Fahreheight value = " + int(mouseX-100),30,120);
  //fityoaiyttuapoeeeeeeeee9;oiADOTIUAOISTDJKKGCKLGAjgfdklyjkdg;iklsdfjhglslkfdjglsy;ifhskfljyhfgjsfdlkj;syljfd;lkgsfklgsj and the text said: text("Kelvin value = "+far(mouseX-100),50,100);
  float temp = tempConverter(mouseX-100);
  fill(mouseX/6,0,0);
  rect(0,50,mouseX,50);
  fill(0,0,180);
  text(temp,10,25);
  text("Kelvin",62,25);
  fill(0,0,180);
  println(temp);
  text("Move the mouse accross the screen to convert Fahrenheight to Kelvin.",25,150);
}

float tempConverter(float far) {
  float kel = (far+459.67)*(5.0/9.0);
  return kel;
}

