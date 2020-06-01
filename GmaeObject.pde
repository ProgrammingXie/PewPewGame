class GameObject {

  float X;
  float Y;
  float vX;
  float vY;
  float Size;
  float Hp;
  color myColour;

  GameObject(color C){
    X = random(0,width);
    Y = random(0,height);
    vX = 0;
    vY = 0;
    Size = random(40,100);
    Hp = 1;
    myColour = C;
  }
  
  GameObject(float x, float y, float size, float hp, color c){
    X = x;
    Y = y;
    Size = size;
    Hp = hp;
    myColour = c;
    vX = 0;
    vY = 0;
  }
  
  void show(){
    fill(myColour);
    noStroke();
    ellipse(X,Y,Size,Size);
  }
  
  void act(){
  X = X + vX;
  Y = Y + vY;
  
  }
  
  // Hp
  boolean isDead(){
    if (Hp<=0){
      return true;
    }
    else {
      return false;
    } 
  }
  
  // Objects Touching
  boolean Touching(GameObject obj){
    if (dist(obj.X,obj.Y,X,Y) < obj.Size/2 + Size/2){
      return true;
    }
    else {
      return false;
    } 
  }
  
  // Enemy Touching Obstacles
  boolean TouchingObstacles() {
    int i = 0;
    while (i<objects.size()){
      GameObject obj = objects.get(i);
      if (obj instanceof Obstacles && Touching(obj)){
        return true;
      }
      i++;
    }
    return false;
  }
  


}
