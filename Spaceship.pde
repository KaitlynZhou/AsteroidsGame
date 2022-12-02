class Spaceship extends Floater  
{   
  //your code here
  public Spaceship() {
    corners = 19;
    xCorners = new int[]{-27, -21, 0, -15, -12, -12, -3, 6, 21, 
      36, 
      21, 6, -3, -12, -12, -15, 0, -21, -27};
    yCorners = new int[]{3, 6, 9, 21, 21, 30, 21, 21, 6, 
      0, 
      -6, -21, -21, -30, -21, -21, -9, -6, -3};
    myColor = color(255);
    myCenterX = Math.random()*300+100;
    myCenterY = Math.random()*300+100;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = Math.random()*2*Math.PI;
  }
  public void Hyperspace() {
    turn(Math.random()*360);
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = Math.random()*300+100;
    myCenterY = Math.random()*300+100;
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
}
