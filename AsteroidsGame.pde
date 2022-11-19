Spaceship boop = new Spaceship();
Star[] twinkles = new Star[300];
int x,y;
public void setup() 
{
  size(700,700);
  for(int i = 0; i < twinkles.length; i++){
    twinkles[i] = new Star();
  }
  frameRate(120);
}
public void draw() 
{
  background(0);
  noStroke();
  fill(255);
  for(int i = 0; i < twinkles.length; i++){
    twinkles[i].show();
  }
  boop.myCenterX = 350;
  boop.myCenterY = 350;
  boop.move();
  boop.show();
}
public void keyPressed(){
  //turn
  if(key == 'a' || keyCode == LEFT){
    boop.turn(-15);
  }
  if(key == 'd' || keyCode == RIGHT){
    boop.turn(15);
  }
  //move
  if(key == 'w' || keyCode == UP){
    boop.accelerate(.5);
  }
  if(key == 's' || keyCode == DOWN){
    boop.accelerate(-.2);
  }
  //limit speed
  if(boop.myXspeed > 10){
    boop.myXspeed = 10;
  }
  if(boop.myXspeed < -10){
    boop.myXspeed = -10;
  }
  if(boop.myYspeed > 10){
    boop.myYspeed = 10;
  }
  if(boop.myYspeed < -10){
    boop.myYspeed = -10;
  }
  //random place
  if(key == 'r'){
    boop.hyperspace();
  }
  //stop
  if(key == 'q'){
    boop.myXspeed = 0;
    boop.myYspeed = 0;
  }
}
