class Bullet extends GameObject {

  Bullet(float x, float y, float size, float hp, color c) {
    super(x, y,size,1,c);  
    if (c==blue){
      PVector aim = new PVector (mouseX - myPlayer.X, mouseY - myPlayer.Y);
      aim.setMag(15);
      vX = aim.x;
      vY = aim.y;
    }
    if (c==green){
      PVector aim = new PVector (myPlayer.X - X, myPlayer.Y - Y);
      aim.setMag(15);
      vX = aim.x;
      vY = aim.y;
    }
  }

  //void show is in ther superclass, GameObject
  
  void act(){
    super.act();
    if (X<0 || X>width || Y<0 || Y>height){
      Hp = 0;
    }
    
    // Collisons
    int i = 0;
    while (i<objects.size()){
      GameObject obj = objects.get(i);
      if (obj instanceof Obstacles && Touching(obj)){
        PVector Bounce = new PVector (X - obj.X, Y - obj.Y);
        Bounce.setMag(10);
        vX = Bounce.x;
        vY = Bounce.y;
        //Hp = 0;    
      }  
      if (obj instanceof Enemy && Touching(obj) && myColour==blue){
        obj.Hp--;      
      }
           
      i = i + 1;
    }
    
  }














}
