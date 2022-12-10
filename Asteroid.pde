class Asteroid extends Floater {
  private double rotSpeed; //randomly + or -
  public Asteroid() {
    corners = 5;
    xCorners = new int[]{-(int)(Math.random()*20+11),(int)(Math.random()*20+11), (int)(Math.random()*30+15), (int)(Math.random()*20+11), -(int)(Math.random()*20+11), -(int)(Math.random()*20+10)};
    yCorners = new int[]{(int)(Math.random()*20+10),(int)(Math.random()*20+10), 0, -(int)(Math.random()*20+10), -(int)(Math.random()*20+10), 0};
    myColor = color(#B9AA9A);
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = Math.random()*2-1;
    myYspeed = Math.random()*2-1;
    rotSpeed = Math.random()*10-5;
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  public void show(){
    noFill();
    stroke(myColor);
    super.show();
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
  public double getXspeed() {
    return myXspeed;
  }
  public double getYspeed() {
    return myYspeed;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}
