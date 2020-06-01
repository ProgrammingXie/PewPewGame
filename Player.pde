class Player extends GameObject{

  Player(){
    super(width/2, height/2, 40, 5, blue);
  }
  
  //void show is in ther superclass, GmaeObject
  
  void act() {// override
    super.act();
    if (wkey){
      vY = -6;
    }
    if (akey){
      vX = -6;
    }
    if (skey){
      vY = 6;
    }
    if (dkey){
      vX = 6;
    }
    
    
    if (!wkey && !skey){
      vY = 0;
    }
    if (!akey && !dkey){
      vX = 0;
    }
    
    
    if (X<=0){
      X = 0;
    }
    if (X>=width){
      X = width;
    }
    if (Y<=0){
      Y = 0;
    }
    if (Y>=height){
      Y = height;
    }
    
    Shoot();
 
  }
  
  void show(){
    super.show();
    //strokeWeight(3);
    //stroke(black);
    //line(X,Y, mouseX,Y);
    //stroke(white);
    //line(mouseX,Y, mouseX,mouseY);
    //strokeWeight(1);    
  }
  
  
  void Shoot(){
    if (mousePressed) {
      objects.add(new Bullet(X,Y,5,1,blue));
    }
  
  
  }
  
  
  
}
