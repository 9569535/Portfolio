//LIST BUTTONS
CalcButton[] numButtons=new CalcButton[10];
CalcButton[] opButtons=new CalcButton[4];
CalcButton[] spButtons=new CalcButton[1];

String displayValue="0";
String valueToCompute="";
String valueToCompute2="";
float valueToComputeI=0;
float valueToComputeI2=0;
float result=0;
char opValue;
boolean firstNum;


/*
void mouseClicked() {
 saveFrame("E:/line-######.png");
 }
 */

void setup() {
  size(170, 250);
  background(50, 55, 55);
  frameRate(10);
  noFill();
  strokeWeight(3);
  stroke(180);
  rect(1, 1, 166, 197);

  //Number Buttons
  numButtons[0]=new CalcButton(10, 170).asNumber(0, 30, 20);
  numButtons[1]=new CalcButton(10, 140).asNumber(1, 30, 20);
  numButtons[2]=new CalcButton(50, 140).asNumber(2, 30, 20);
  numButtons[3]=new CalcButton(90, 140).asNumber(3, 30, 20);
  numButtons[4]=new CalcButton(10, 110).asNumber(4, 30, 20);
  numButtons[5]=new CalcButton(50, 110).asNumber(5, 30, 20);
  numButtons[6]=new CalcButton(90, 110).asNumber(6, 30, 20);
  numButtons[7]=new CalcButton(10, 80).asNumber(7, 30, 20);
  numButtons[8]=new CalcButton(50, 80).asNumber(8, 30, 20);
  numButtons[9]=new CalcButton(90, 80).asNumber(9, 30, 20);
  opButtons[0]=new CalcButton(130, 170).asOperator("+", 30, 20);
  opButtons[1]=new CalcButton(130, 140).asOperator("-", 30, 20);
  opButtons[2]=new CalcButton(130, 110).asOperator("*", 30, 20);
  opButtons[3]=new CalcButton(130, 80).asOperator("/", 30, 20);
  spButtons[0]=new CalcButton(50, 170).asSpecial(".", 30, 20);









  //Value first num=true
  firstNum=true;
}

void draw() {
  //draw num buttons
  for (int i=0; i<numButtons.length; i++) {
    CalcButton inumButton=numButtons[i];
    inumButton.display();
  }

  for (int i=0; i<opButtons.length; i++) {
    CalcButton iopButton=opButtons[i];
    iopButton.display();
  }
  for (int i=0; i<spButtons.length; i++) {
    CalcButton ispButton=spButtons[i];
    ispButton.display();
  }
  updateDisplay();
}

void mousePressed() {
  for (int i=0; i<numButtons.length; i++) {
    CalcButton inumButton=numButtons[i];
    inumButton.clickButton();
    if (inumButton.overBox) {
      if (firstNum) {
        //println(i+" "+inumButton.numButtonValue);
        valueToCompute += int(inumButton.numButtonValue);
        displayValue=valueToCompute;
      } else {
        valueToCompute2 += int(inumButton.numButtonValue);
        displayValue=valueToCompute2;
      }
    }
  }
  //Op
  //+
  for (int i=0; i<opButtons.length; i++) {
    CalcButton iOpButton=opButtons[i];
    iOpButton.clickButton();
    if (iOpButton.overBox) {
      if (iOpButton.opButtonValue=="+") {
        if (result !=0) {
          opValue= '+';
          valueToCompute2="";
          firstNum=false;
          displayValue= "+";
        } else {
          opValue='+';
          firstNum=false;
          displayValue = "+";
        }
      } 
      //OP
      //-
      else if (iOpButton.opButtonValue=="=") {
        //perform calculation
        firstNum=true;
        performCalculation();
      } else if (iOpButton.opButtonValue=="-") {
        if (result!=0) {
          opValue='-';
          valueToCompute2="";
          firstNum=false;
          displayValue="-";
        } else {
          opValue='-';
          firstNum=false;
          displayValue="-";
        }
      }

      //X
      else if (iOpButton.opButtonValue=="=") {
        //perform calculation
        firstNum=true;
        performCalculation();
      } else if (iOpButton.opButtonValue=="*") {
        if (result!=0) {
          opValue='*';
          valueToCompute2="";
          firstNum=false;
          displayValue="*";
        } else {
          opValue='*';
          firstNum=false;
          displayValue="*";
        }
      }
      // "/"
      else if (iOpButton.opButtonValue=="=") {
        //perform calculation
        firstNum=true;
        performCalculation();
      } else if (iOpButton.opButtonValue=="/") {
        if (result!=0) {
          opValue='/';
          valueToCompute2="";
          firstNum=false;
          displayValue="/";
        } else {
          opValue='/';
          firstNum=false;
          displayValue="/";
        }
      }
    }
  }
  //DECIMAL
  for (int i=0; i<spButtons.length; i++) {
    CalcButton iSpButton=spButtons[i];
    iSpButton.clickButton();
    //The following line needs a feild because it cannon be resolved.
    if (iSpButton.on) {
      if (iSpButton.spButtonValue==".") {
        //Clicked on
        if (iSpButton.on && firstNum==true) {
          valueToCompute += iSpButton.spButtonValue;
          displayValue=valueToCompute2;
        }
      }
    }

    //CLEAR
    else if (iOpButton.opButtonValue=="C") {
      displayValue="0";
      opValue="C";
      valueToCompute="";
      valueToCompute2="";
      valueToComputeI=0;
      valueToComputeI2=0;
      result=0;
      firstnum=true;
    }


    //NEGATIVE
    else if (iOpButton.opButtonValue=="+/-") {
      opValue='n';
      performCalculation();
    }
  }
}
  void performCalculation() {
    //string=int
    valueToComputeI=float(valueToCompute);
    valueToComputeI2=float(valueToCompute2);

    //Calculation based on operators
    if (opValue=='+') {
      result=valueToComputeI+valueToComputeI2;
      displayValue=str(result);
    } else if (opValue=='-') {
      result=valueToComputeI-valueToComputeI2;
      displayValue=str(result);
    } else if (opValue=='*') {
      result=valueToComputeI*valueToComputeI2;
      displayValue=str(result);
    } else if (opValue=='/') {
      result=valueToComputeI/valueToComputeI2;
      displayValue=str(result);

      //let=work multiple times
      if (firstNum) {
        valueToCompute=displayValue;
      } else {
        valueToCompute=displayValue;
        valueToCompute2="";
      }
    } else if (opValue=='n') {
      if (firstNum) {
        valueToComputeI=valueToComputeI*-1;
        displayValue=str(valueToComputeI);
      } else {
        valueToComputeI2=valueToComputeI2*-1;
        displayValue=str(valueToComputeI);
      }
    }
  }

  void updateDisplay() {
    fill(200, 200, 150);
    rect(10, 10, 150, 30, 7);
    fill(0);
    textSize(25);
    text(displayValue, 20, 37);
    //
    fill(50, 55, 55);
    noStroke();
    rect(0, 200, 170, 250);
    fill(255);
    textSize(12);
    text("Val 1: " + valueToCompute, 20, 210);
    text("Val 2: " + valueToCompute2, 20, 222);
    text("Result: " + result, 20, 234);
    text("Operator: " + opValue, 20, 246);
  }

class CalcButton {
  //class variables
  boolean isNumber;
  boolean isSpecial;
  float numButtonValue;
  String opButtonValue;
  String spButtonValue;
  float xpos;
  float ypos;
  //int boxSize=30;
  int buttonW=30;
  int buttonH=20;
  boolean overBox=false;
  boolean isOperator;


  //Constructor
  CalcButton(float tempXpos, float tempYpos) {
    xpos=tempXpos;
    ypos=tempYpos;
  }

  //NUMBER constructor
  CalcButton asNumber(float tempNumButtonValue, int tempW, int tempH) {
    isNumber=true;
    numButtonValue=tempNumButtonValue;
    buttonW=tempW;
    buttonH=tempH;
    return this;
  }

  //OPERATOR constructor
  CalcButton asOperator(String tempOpButtonValue, int tempW, int tempH) {
    isOperator=true;
    opButtonValue=tempOpButtonValue;
    buttonW=tempW;
    buttonH=tempH;

    return this;
  } 

  CalcButton asSpecial(String buttonValue, int tempW, int tempH) {
    isSpecial=true;
    spButtonValue=buttonValue;
    buttonW=tempW;
    buttonH=tempH;
    return this;
  }

  //Display
  void display() {
    rectMode(CORNER);
    //rounded edges

    if (isNumber) {
      fill(177);
      stroke(0);
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 5);
      fill(122, 44, 22);
      textSize(12);
      text(int(numButtonValue), xpos+12, ypos+13);
    } else if (isSpecial) {
      fill(133);
      stroke(0);
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0);
      textSize(12);
      text(spButtonValue, xpos+12, ypos+13);
    } else if (isOperator) {
      fill(133);
      stroke(0);
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0);
      textSize(12);
      text(opButtonValue, xpos+12, ypos+13);
    }
  }

  //Mouse Actions
  void clickButton() {
    overBox = mouseX > xpos && mouseX < xpos + buttonW && mouseY > ypos && mouseY < ypos + buttonH;
  }
}


