void gameover() {
  //background 
background(black);
textAlign(CENTER, CENTER);

//end text 
textSize(60);
fill(white);
text("Your Final Score = " + points, width/2, height/2);

textSize(40);
text("Highest Score: " + highscore, width/2, 50);

text("Click to Replay", width/2, 350);

if(highscore < points) {
  highscore = points;
}

}

void gameoverClicks() {
  mode = INTRO;
  strokeWeight(2);
  points = 0;
  sizeV = 5;
  barL = 0;
}
