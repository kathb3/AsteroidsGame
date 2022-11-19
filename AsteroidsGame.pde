class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star(){
    myX = (int)(Math.random()*700);
    myY = (int)(Math.random()*700);
  }
  public void show(){
    fill(255);
    ellipse(myX,myY,3,3);
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
}
