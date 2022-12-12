Spaceship boop = new Spaceship();
Star[] twinkles = new Star[300];
ArrayList <Asteroid> bonk = new ArrayList <Asteroid>();
ArrayList <SmallAsteroid> tonk = new ArrayList <SmallAsteroid>();
ArrayList <Bullet> pew = new ArrayList <Bullet>(); 
int x,y;
boolean split;
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
  frameRate(100);
  for(int i = 0; i < twinkles.length; i++){
    twinkles[i] = new Star();
  }
  for(int i = 0; i < 50; i++){
    bonk.add(new Asteroid());
  }
}

public void draw() 
{
  background(0);
  noStroke();
  fill(255);
  boop.move();
  boop.show();
  split = false;
  for(int i = 0; i < twinkles.length; i++){
    twinkles[i].draw();
  }
  for(int i = 0; i < bonk.size(); i++){
    if(dist((float)boop.getX(), (float)boop.getY(), bonk.get(i).getX(), bonk.get(i).getY()) < 30){
      bonk.remove(i);
      break;
    }
    else{
      bonk.get(i).move();
      bonk.get(i).show();
    }
  }
  for(int i = 0; i < pew.size(); i++){
    pew.get(i).move();
    pew.get(i).show();
  }
  for(int i = 0; i < bonk.size(); i++){
    for(int j = 0; j < pew.size(); j++){
      if(dist((float)pew.get(j).getX(), (float)pew.get(j).getY(), (float)bonk.get(i).getX(), (float)bonk.get(i).getY()) < 15){
        pew.remove(j);
        bonk.remove(i);
        /*split = true;
        if(split == true){
          tonk.get(i).move();
          tonk.get(i).show();
        }*/
        break;
      }
    }
  }
}

public void keyPressed(){
  //turn
  if(key == 'a' || keyCode == LEFT){
    boop.turn(-15);
  }
  else if(key == 'd' || keyCode == RIGHT){
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
  //pew pew
  if(key == ' '){
    pew.add(new Bullet(boop));
  }
}
