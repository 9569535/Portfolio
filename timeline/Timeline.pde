void setup() {
  size(900,400);
  background(random(255),random(255),random(255));
}

void draw() {
  strokeWeight(4);
  line(100,250,800,250);
  //wuh-WH-EEEEEEbin...
  
  //histEvent = TOP
  //histEvent = BOTTOM
  histEvent("Punchcards - 1880s",50,200);
  histEventTwo("'PCMSC' - 1940",110,300);
  histEvent("ENIAC- 1945",170,200);
  histEventTwo("Curta - 1948",230,300);
  histEvent("ANITA - 1961",290,200);
  histEventTwo("EC-130 - 1963",600,300);
  histEvent("IBM - 1964",700,200);
  histEventTwo("EDSAC 2 - 1965",706,300);
  textSize(10);
  text("Computer Development",450,100);
  textSize(1);
  println(mouseX,mouseY);
}

void histEvent(String eventName, int xpos, int ypos) {
  text(eventName,xpos,ypos);
  line(xpos, ypos, xpos+50, ypos+50);
  
}

void histEventTwo(String eventName, int xpos, int ypos) {
  line(xpos, ypos, xpos-50, ypos-50);
  text(eventName,xpos,ypos);
}

