void game() {
  background(#D1BA70);
  
  // Game Engine
  int i = 0;
  while(i<objects.size()){
    GameObject obj = objects.get(i);
    obj.act();
    obj.show();
    if (obj.isDead()){
      objects.remove(i);
    }
    else {
      i = i + 1;
    }
  }
  //if (mouseY != pmouseY && mouseX != pmouseX) {
  //  angle = atan2(mouseY-pmouseY, mouseX-pmouseX);
  //}
  //pushMatrix();
  //  translate(XPlayer,YPlayer);
  //  rotate(angle);
  //  stroke(0);
  //  strokeWeight(2);
  //  line(3,-6, 15,-3);
  //  line(8,-6, 7,-12);
  //  line(-3,-6, -15,-3);
  //  line(-8,-6, -7,-12); 
  //popMatrix();
  
  // Spawn Code
  if (frameCount % 120 ==0){// modulus or mod
    objects.add( new Enemy());
  }  
  
  
   
}
//=======================================================================================================================================

void gameClicks() {

}
