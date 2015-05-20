class Lines {
  //Class Variables
  float xpos;
  float ypos;
  float strokeW;
  float lineLength;
  color c;

  //constructor
  Lines(float tempX, float tempY, float tempStroke, float tempLength, color tempC) {
    xpos=tempX;
    ypos=tempY;
    strokeW=tempStroke;
    lineLength=tempLength;
    c=tempC;
  }
  //display
  void display() {
    strokeW=random(1, 5);
    lineLength=random(1, 50);
    c=color(0, 0, random(255));
    stroke(random(100, 255));
    stroke(200, 180, 0);
    stroke(200, 180, 0);
    ellipse(xpos, ypos, 8, 8);
    stroke(0);
    ellipse(xpos, ypos, 4, 4);
    stroke(200, 180, 0);

    //stroke(200,180,0);

    if (xpos > width || xpos < 0 || ypos > height || ypos < 0) {
      xpos=random(width);
      ypos=random(height);
    } else {
      if (random(100)>90) {
        strokeWeight(strokeW);
        moveLeft(xpos, ypos, lineLength);
      } else if (random(100)>80) {
        strokeWeight(strokeW);
        moveRight(xpos, ypos, lineLength);
      } else if (random(100)>80) {
        strokeWeight(strokeW);
        moveUp(xpos, ypos, lineLength);
      } else if (random(100)>80) {
        strokeWeight(strokeW);
        moveDown(xpos, ypos, lineLength);
      } else if (random(100)>80) {
        strokeWeight(strokeW);
        moveUpLeft(xpos, ypos, lineLength);
      } else if (random(100)>80) {
        strokeWeight(strokeW);
        moveUpRight(xpos, ypos, lineLength);
      } else if (random(100)>80) {
        strokeWeight(strokeW);
        moveDownLeft(xpos, ypos, lineLength);
      } else if (random(100)>80) {
        strokeWeight(strokeW);
        moveDownRight(xpos, ypos, lineLength);
      }
    }
  }
  void moveRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY);
      xpos=startX+i;
      ypos=startY;
    }
  }

  void moveLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY);
      xpos=startX-i;
      ypos=startY;
    }
  }

  void moveUp(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY-i);
      xpos=startX;
      ypos=startY-i;
    }
  }

  void moveDown(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY+i);
      xpos=startX;
      ypos=startY+i;
    }
  }

  //Diaganal

  void moveUpLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY-i);
      xpos=startX-i;
      ypos=startY-i;
    }
  }

  void moveUpRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY-i);
      xpos=startX+i;
      ypos=startY-i;
    }
  }

  void moveDownLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY+i);
      xpos=startX-i;
      ypos=startY+i;
    }
  }

  void moveDownRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY+i);
      xpos=startX+i;
      ypos=startY+i;
    }
  }
}

