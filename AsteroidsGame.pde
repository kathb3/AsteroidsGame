Spaceship boop = new Spaceship();
Star[] twinkles = new Star[300];
int x,y;
public void mouseClicked()
{
  x = mouseX;
  y = mouseY;
  //small
  if(key == 'm'){
    ellipse(x,y,5,5);
  }
  if(key == 'n'){
    ellipse(x,y,10,10);
  }
}
public void setup() 
{
  size(600,600);
  for(int i = 0; i < twinkles.length; i++){
    twinkles[i] = new Star();
  }
  frameRate(100);
}
public void draw() 
{
  background(0);
  noStroke();
  fill(255);
  boop.move();
  boop.show();
  for(int i = 0; i < twinkles.length; i++){
    twinkles[i].show();
  }
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
    boop.accelerate(1);
  }
  if(key == 's' || keyCode == DOWN){
    boop.accelerate(-1);
  }
  //limit speed
  if(boop.myXspeed > 25){
    boop.myXspeed = 25;
  }
  if(boop.myXspeed < -25){
    boop.myXspeed = -25;
  }
  if(boop.myYspeed > 25){
    boop.myYspeed = 25;
  }
  if(boop.myYspeed < -25){
    boop.myYspeed = -25;
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
