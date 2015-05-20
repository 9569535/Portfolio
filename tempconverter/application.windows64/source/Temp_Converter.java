import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Temp_Converter extends PApplet {

public void setup() {
  size(1500,500);
  //text("Fahrenheight to Kelvin converter",900,20);
  
}

public void drawReference(int xpos, int ypos) {
  stroke(200);
  line(xpos-50,ypos,1400,ypos);
  for(int i=0; i<1350; i=i+100) {
    text(i, xpos+i-8,ypos);
    line(xpos+i,ypos,xpos+i,ypos+5);
  }
}

public void draw() {
  background(120);
  text("K",15,45);
  text("Fahrenheight To Kelvin Converter by Kadin Reese",450,20);
  drawReference(100,50);
  //text("Fahreheight value = " + int(mouseX-100),30,120);
  text("Fahreheight value = " + PApplet.parseInt(mouseX-100),30,120);
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

public float tempConverter(float far) {
  float kel = (far+459.67f)*(5.0f/9.0f);
  return kel;
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "Temp_Converter" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
