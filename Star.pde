class Star //note that this class does NOT extend Floater
{
  //your code here
  double myX, myY;
  int myColor, radius;
  Star(){
    myX = Math.random()*500;
    myY = Math.random()*500;
    myColor = color(255);
    radius = (int)(Math.random()*5+2);
  }
  public void show(){
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY, radius, radius);
  }
}
