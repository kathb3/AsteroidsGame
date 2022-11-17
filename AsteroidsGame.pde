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
}
