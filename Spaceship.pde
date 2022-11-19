//ufo
class Spaceship extends Floater  
{   
  public Spaceship(){
    myColor = color(255);
    corners = 4;
    xCorners = new int[]{-8,16,-8,-2};
    yCorners = new int[]{-8,0,8,0};
  }
  public void hyperspace(){
    myCenterX = (int)(Math.random()*700);
    myCenterY = (int)(Math.random()*700);
    myPointDirection = (int)(Math.random()*360);
  }
}
