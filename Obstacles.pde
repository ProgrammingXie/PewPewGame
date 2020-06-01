class Obstacles extends GameObject {
    
  Obstacles(){
    super(brown);
  
  
  }
  
  void act(){
    super.act();
    if (Touching(myPlayer)){
      PVector BouncePlayer = new PVector ((myPlayer.X - X), (myPlayer.Y - Y));
      BouncePlayer.setMag(5);
      myPlayer.X = myPlayer.X + BouncePlayer.x;
      myPlayer.Y = myPlayer.Y + BouncePlayer.y;
    }
  
  }
  
  void show(){
    super.show();
  
  }
  
  
  
  
}
