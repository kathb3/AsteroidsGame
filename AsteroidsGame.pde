Spaceship boop = new Spaceship();
int x,y;
public void setup() 
{
  size(700,700);
  frameRate(120);
}
public void draw() 
{
  background(0);
  boop.move();
  boop.show();
  noStroke();
  fill(255);
}
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
