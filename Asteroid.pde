class Asteroid extends Floater {
  private double rotSpeed; //randomly + or -
  public Asteroid() {
    corners = 4;
    xCorners = new int[]{-11, 7, 11, 5, -11};
    yCorners = new int[]{8, 8, -2, -10, -8};
    myColor = color(255);
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = Math.random()*2+1;
    myYspeed = Math.random()*2+1;
    myPointDirection = Math.random()*2*Math.PI;
  }
  public void move() {
    turn(myPointDirection);
    super.move();
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
}
