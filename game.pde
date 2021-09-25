void game() {
  //background
  background(white);
  fill(grey);
  noStroke();
  rect(0, 0, width/2, height);
  
  //background hightlight
  if (mouseX < width/2) {
    strokeWeight(10);
    stroke(black);
    fill(grey);
    rect(0, 0, width/2, height);
  }
  
  if (mouseX > width/2) {
    strokeWeight(10);
    stroke(black);
    fill(white);
    rect(width/2, 0, width/2, height);
  }

  //Labels
  textAlign(CENTER, CENTER);
  fill(black);
  textSize(50);
  text("True", width/4, height/10);
  text("False", width - width/4, height/10);
  
  frameRate(50);
  
  if (sizeV >= 300) {
    mode = GAMEOVER;
  }

  //to display game text
  fill(colorCode[c]);
  textSize(sizeV);
  sizeV = sizeV + 2;
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(angle));
  textAlign(CENTER, CENTER);
  text(colorName[w], 0, 0);
  popMatrix();
  angle = angle + 2;

  //score count
  textSize(40);
  fill(black);
  text("Score " + points, 760, 440);
  
  //pause button
  textSize(30);
  fill(black);
  text("To Pause: P", 100, 440);

  //time count bar
  noStroke();
  fill(black);
  rect(20, 20, 130, 20, 20);
  fill(accentBlue);
  rect(20, 20, barL, 20, 20);
  barL = barL + 0.9;
  }

void gameClicks() {
  //game mechanics to control if you chose right or wrong
if (mouseX < width/2) {
  if (c == w) {
  points = points + 1;
  sizeV = 5;

  l = random(0, 1);
  if (l < 0.5) {
    w = int (random(0, 7));
    c = w;
  }
  if (l > 0.5) {
    w = int (random(0, 7));
    c = int (random(0, 7));
    while(w == c) {
    w = int (random(0, 7));
    c = int (random(0, 7));
    }
  }
  barL = 0;
  } else {
      mode = GAMEOVER;
  }
} 

if (mouseX > width/2) {
  if (c != w) {
  points = points + 1;
  sizeV = 5;
  
  l = random(0, 1);
  if (l < 0.5) {
    w = int (random(0, 7));
    c = w;
  }
  if (l > 0.5) {
    w = int (random(0, 7));
    c = int (random(0, 7));
    while(w == c) {
    w = int (random(0, 7));
    c = int (random(0, 7));
    }
  }
  barL = 0;
  } else {
    mode = GAMEOVER;
  }
}

}

void gamePressed() {
  //to pause
  if (key == 'p' || key == 'P') {
    mode = PAUSE;
  } 
}
