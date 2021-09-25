void pause() {
  //background
background(white);
fill(grey);
noStroke();
rect(0, 0, width/2, height);

//Labels
textAlign(CENTER, CENTER);
fill(black);
textSize(50);
text("True", width/4, height/10);
text("False", width - width/4, height/10);

//display
fill(colorCode[c]);
textSize(sizeV);
pushMatrix();
translate(width/2, height/2);
rotate(radians(angle));
textAlign(CENTER, CENTER);
text(colorName[w], 0, 0);
popMatrix();

//score
textSize(40);
fill(black);
text("Score " + points, 760, 440);

//pause button
textSize(30);
fill(black);
text("To Pause: P", 100, 440);

//pause sign
textSize(50);
textAlign(CENTER, CENTER);
fill(black);
text("Paused", width/2, height/2);

// time bar
fill(black);
rect(20, 20, 130, 20, 20);
fill(accentBlue);
rect(20, 20, barL, 20, 20);
}

void pauseClicks(){
  
}

void pausePressed() {
   if (key == 'p' || key == 'P') {
    mode = GAME;
  } 
}
