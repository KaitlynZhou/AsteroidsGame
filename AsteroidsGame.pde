//your variable declarations here
Spaceship bob = new Spaceship();
Star[] stars;
ArrayList <Bullet> z = new ArrayList <Bullet>();

ArrayList <Asteroid> x = new ArrayList <Asteroid>();
public void setup() 
{
  //your code here
  size(500, 500);
  stars = new Star[250];
  for (int i = 0; i<250; i++) {
    stars[i]=new Star();
  }
  for (int i = 0; i<9; i++) {
    x.add(new Asteroid());
  }
  for (int i = 0; i<5; i++) {
    z.add(new Bullet(bob));
  }
}
public void draw() 
{
  //your code here
  background(0);
  for (int i = 0; i<stars.length; i++) {
    stars[i].show();
  }
  for (int i = 0; i<x.size(); i++) {
    x.get(i).show();
    x.get(i).move();
  }
  for (int j = 0; j<z.size(); j++) {   
    z.get(j).show();
    z.get(j).move();
  }
  for (int i = 0; i<x.size(); i++) {
    for (int j = 0; j<z.size(); j++) {      
      float d2 = dist((float)z.get(j).getCenterX(), (float)z.get(j).getCenterY(), (float)x.get(i).getCenterX(), (float)x.get(i).getCenterY());
      if (d2<30) {
        z.remove(j);
        x.remove(i);
        break;
      }
    }
  }
  for (int i = 0; i<x.size(); i++) {
    float d = dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)x.get(i).getCenterX(), (float)x.get(i).getCenterY());
    if (d<30)
      x.remove(i);
  }
  if(x.size()<9)
    x.add(new Asteroid());
  bob.show();
  bob.move();
}
public void keyPressed()
{
  if (key == 'a' || key == 'A') {
    bob.Hyperspace();
  }
  if (key == 'r' || key == 'R') {                 
    bob.turn(10);
  }
  if (key == 'q' || key == 'Q') {                 
    bob.turn(-10);
  }
  if (key == 'w' || key == 'W') {
    bob.accelerate(0.5);
  }
  if (key == 's' || key == 'S') {
    bob.accelerate(-0.5);
  }
  if (key == ' ') {
    z.add(new Bullet(bob));
  }
}
