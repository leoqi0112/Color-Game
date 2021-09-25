void mouseReleased() {
   if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } 
}

void keyPressed() {
    if (mode == GAME) {
    gamePressed();
  } else if (mode == PAUSE) {
    pausePressed();
  }
}
