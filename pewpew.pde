ArrayList<GameObject> objects;
Player myPlayer;

color black  = #000000;
color white  = #FFFFFF;
color purple = #490A3D;
color pink   = #BD1550;
color orange = #E97F02;
color yellow = #F8CA00;
color green  = #8A9B0F;
color blue = #009BFF;
color brown = #6C4608;


final int INTRO    = 0;
final int GAME     = 1;
final int PAUSE    = 2;
final int GAMEOVER = 3;
int GameMode = INTRO;

PImage TitleBackground;

boolean wkey;
boolean akey;
boolean skey;
boolean dkey;
boolean spacekey;

int TitleColor = #004150;
int XPlayer = 720;
int YPlayer = 450;
float angle = 0;


void setup() {
  
  TitleBackground = loadImage("TitleBackground.jpg");
  
  
  size(1440, 900);
  noStroke();
  
  wkey = false; 
  akey = false; 
  skey = false; 
  dkey = false; 
  spacekey = false;
  
  myPlayer = new Player();
  objects = new ArrayList<GameObject>();
  objects.add(myPlayer);
  int i = 0;
  while (i<100){
    objects.add( new Obstacles());
    i = i + 1;
  }
  
}
//=======================================================================================================================================

void draw() {
  
  println(mouseX,mouseY);
  println(angle);
  
  if (GameMode==INTRO){
    intro();
  }
  else if (GameMode==GAME){
    game();
  }
  else if (GameMode == PAUSE){
    pause();
  }
  else if (GameMode == GAMEOVER){
    gameOver();
  }
  else {
    println("Mode error! You need to add a new mode to your mode framework in the draw function! -- Mr. Pelletier");
  }
  
  println(objects.size());
  //println();
  //println();
  //println();
  //println();
  //println();
  //println();
  //println();
  //println();
  //println();
  //println();
  
  textAlign(CORNER,CORNER);
  fill(#00DE0C);
  textSize(18);
  text("fps:",10,23);
  text(frameRate,40,24);
  
}
