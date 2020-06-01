class Enemy extends GameObject {
  
  int Transparency;

  Enemy(){
    super(random(0,width), random(0,height), 40, 5, green);
    while (TouchingObstacles()){
      X = random(0,width);
      Y = random(0,height);
    }
    Transparency = 0;
  }

  void act(){
    super.act();
    if (Transparency<255){
      Transparency++;
    }
    else {
      objects.add(new Bullet(X,Y,5,1,green));
    }
  }
  
  void show(){
    fill(myColour, Transparency);
    noStroke();
    ellipse(X,Y,Size,Size);   
  }
  
  



}
