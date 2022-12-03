class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid()
  {
    rotSpeed = (int)(Math.random()*7) -3;

    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*5) - 6;
    yCorners[0] =(int)(Math.random()*5) + 5;
    xCorners[1] = (int)(Math.random()*5) + 6;
    yCorners[1] = (int)(Math.random()*5) + 5;
    xCorners[2] = (int)(Math.random()*5) + 10;
    yCorners[2] = (int)(Math.random()*5);
    xCorners[3] = (int)(Math.random()*5) + 6;
    yCorners[3] = (int)(Math.random()*5) - 5;
    xCorners[4] = (int)(Math.random()*5) - 6;
    yCorners[4] = (int)(Math.random()*5) - 5;
    xCorners[5] = (int)(Math.random()*5) - 10;
    yCorners[5] = (int)(Math.random()*5);

    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myPointDirection = Math.random()*360;
  }

  public void move()
  {
    turn(rotSpeed);
    super.move();
  }

  public void show()
  {
    stroke(232,233,235);    
    double dRadians = myPointDirection*(Math.PI/180);                 
    int xRotatedTranslated, yRotatedTranslated;    
    beginShape();         
    for(int nI = 0; nI < corners; nI++)    
    {     
      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
    }   
    endShape(CLOSE);  
  }
}
