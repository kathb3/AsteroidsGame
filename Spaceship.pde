//ufo
class Spaceship extends Floater  
{   
  public Spaceship(){
    myColor = color(255);
    corners = 4;
    xCorners = new int[]{-8,16,-8,-10};
    yCorners = new int[]{-8,0,8,0};
  }
  public void hyperspace(){
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = (int)(Math.random()*360);
  }
}
