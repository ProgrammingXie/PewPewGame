void mouseReleased() {
  if (GameMode == INTRO){
    introClick();
  }
  else if (GameMode == GAME){
    gameClicks();
  }
  else if (GameMode == PAUSE){
    pauseClicks();
  }
  else if (GameMode == GAMEOVER){
    gameOverClicks();
  }
  else{
    println("Unhandled click! You need to add a mode to the mouseClicked function in the interactions tab.. -- Mr. Pelletier");
  }
}
//=======================================================================================================================================

void keyPressed() {
  if (keyCode==UP || key =='w' || key=='W'){
    wkey = true;
  }
  if (keyCode==LEFT || key=='a' || key=='A'){
    akey = true;
  }
  if (keyCode==DOWN || key=='s' || key=='S'){
    skey = true;
  }
  if (keyCode==RIGHT || key=='d' || key=='D'){
    dkey = true;
  }
  if (keyCode==RIGHT || key=='d' || key=='D'){
    spacekey = true;
  }
}
//=======================================================================================================================================

void keyReleased() {
  if (keyCode==UP || key =='w' || key=='W'){
    wkey = false;
  }
  if (keyCode==LEFT || key=='a' || key=='A'){
    akey = false;
  }
  if (keyCode==DOWN || key=='s' || key=='S'){
    skey = false;
  }
  if (keyCode==RIGHT || key=='d' || key=='D'){
    dkey = false;
  }
  if (keyCode==RIGHT || key=='d' || key=='D'){
    spacekey = false;
  }
}
