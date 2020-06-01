void intro() {
  imageMode(CENTER);
  image(TitleBackground,720,450);
 
 for (int x = -1; x < 2; x++) {
    fill(#77D8E8);
    textSize(125);
    textAlign(CENTER,CENTER);
    text("Pew Pew Game",720+x,170);// ct
    text("Pew Pew Game",720,170+x);
  }
  fill(#123081);
  textSize(124);
  textAlign(CENTER,CENTER);
  text("Pew Pew Game",720,170);
  
  noFill();
  stroke(TitleColor);
  strokeWeight(5);
  rect(480,624,480,160,7);
  
  fill(#00286C);
  noStroke();
  rect(500,644,440,120,7);
  
  fill(TitleColor);
  textAlign(CENTER,CENTER);
  textSize(40);
  text("Begin Advanture",720,704);
  fill(250);
  textSize(20);
  text("By Ethan Xie",70,875);
  
  
  if (mouseX>480 && mouseX<980 && mouseY>624 && mouseY<804){
    TitleColor = #00CAFF;
  }
  else {
    TitleColor = #004150;
  }
  
  
}
//=======================================================================================================================================

void introClick(){
  if (mouseX>480 && mouseX<980 && mouseY>624 && mouseY<804){
    GameMode = GAME;
  }
}
