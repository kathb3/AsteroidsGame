//ufo
class Spaceship extends Floater  
{   
  public Spaceship(){
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    corners = 8;
    xCorners = new int[]{30,30,8,8,-8,-8,8,8};
    yCorners = new int[]{-30,30,30,50,50,-50,-50,-30};
    myCenterX = myCenterY = 300;
    myXspeed = myYspeed = 0;
    myPointDirection = -90;
  }
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
  public double getXspeed(){return myXspeed;}
  public double getYspeed(){return myYspeed;}
  public double getPointDirection(){return myPointDirection;}
  public void hyperspace(){
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = (int)(Math.random()*360);
  }
}
