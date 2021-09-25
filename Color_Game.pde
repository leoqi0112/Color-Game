//Leo Qi
//Sept 22
//Beware that there is a color NAVY in this game that is not blue
//A game where you choose the matching color and color. If you choose correctly, you gain a point. 
//If you choose wrong, the game finishes. There is also a time limit displayed by the time bar. 
//If you do not answer within the time given, the game finishes.

import processing.javafx.*;

int mode;

//gif and font variables
PImage[] gif;
PFont NewYork;
int numberOfFrames;
int f;

//text size variable
int sizeV = 5;

//rotate
int angle = 45;

//game points
int points;
int highscore = 0;

//random color 
int w = int (random(0, 7));
int c = int (random(0, 7));
float l = random(0, 1);

//time bar
float barL;

//mode framework variables
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//color text and fill 
String [] colorName;
color [] colorCode;

//color pallette
color red = #EC7063;
color purple = #9B59B6;
color blue = #85C1E9;
color green = #1ABC9C;
color yellow = #F7DC6F;
color orange = #F39C12;
color navy = #34495E;
color black = #17202A;
color white = #FDFEFE;
color grey = #95A5A6;
color accentBlue = #A9CCE3;

void setup() {
  size(900, 480, FX2D);
  mode = INTRO;
  
  colorName = new String [7];
  colorCode = new color [7];
  
  //color text
  colorName[0] = "red";
  colorName[1] = "purple";
  colorName[2] = "blue";
  colorName[3] = "green";
  colorName[4] = "yellow";
  colorName[5] = "orange";
  colorName[6] = "navy";
  
  //color code
  colorCode[0] = red;
  colorCode[1] = purple;
  colorCode[2] = blue;
  colorCode[3] = green;
  colorCode[4] = yellow;
  colorCode[5] = orange;
  colorCode[6] = navy;
  
  //gif
  numberOfFrames = 126;
  gif = new PImage[numberOfFrames];
  
  int i = 0;
  while (i < numberOfFrames) {
    gif [i] = loadImage("frame_"+i+"_delay-0.03s.gif");
    i = i+1;
  }
  
  //Text
  NewYork = createFont("NewYork.otf", 100);
 
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
