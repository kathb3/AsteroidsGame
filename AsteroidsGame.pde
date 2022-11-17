Spaceship boop = new Spaceship();

public void setup() 
{
  size(700,700);
}
public void draw() 
{
  boop.show();
}

public void keyPressed(){
  if(key == 'r'){
    boop.hyperspace();
  }
  if(key == 'w' || key == UP){
    boop.accelerate(.5);
  }
  if(key == 's' || key == DOWN){
    boop.accelerate(-.5);
  }
}
