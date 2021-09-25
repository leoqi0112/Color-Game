void intro() {
  
// gif background
background(0);
image (gif[f], 0, 0, width, height);

//modulus
if (frameCount % 2 == 0) f = f + 1;
if (f == numberOfFrames) f = 0;


//Intro text
textAlign(CENTER, CENTER);
textSize(100);
textFont(NewYork);
if (mouseX > 140 && mouseX < 760 && mouseY > 200 && mouseY < 300) {
    fill(white);
    stroke(white);
    line(140, 300, 760, 300);
    text ("Click To Start", width/2, height/2);
    } else {
    fill(black);
    stroke(black);
    line(140, 300, 760, 300);
    text ("Click To Start", width/2, height/2);
    }
}

void introClicks() {
  mode = GAME;
}
