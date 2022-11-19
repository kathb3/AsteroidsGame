class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star(){
    myX = (int)(Math.random()*700);
    myY = (int)(Math.random()*700);
  }
  public void show(){
    fill(255);
    ellipse(myX, myY,3,3);
  }
}
