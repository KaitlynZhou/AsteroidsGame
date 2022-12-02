//your variable declarations here
Spaceship bob = new Spaceship();
Star[] stars;
ArrayList <Asteroid> x = new ArrayList <Asteroid>();
public void setup() 
{
  //your code here
  size(500,500);
  stars = new Star[250];
  for(int i = 0; i<250; i++){
    stars[i]=new Star();
  }
  for(int i = 0; i<9; i++){
    x.add(new Asteroid());
  }
}
public void draw() 
{
  //your code here
  background(0);
  for(int i = 0; i<stars.length; i++){
    stars[i].show();
  }
  for(int i = 0; i<x.size(); i++){
    x.get(i).show();
    x.get(i).move();
    float d = dist((float)bob.getCenterX(),(float)bob.getCenterY(),(float)x.get(i).getCenterX(),(float)x.get(i).getCenterY());
    if(d<30)
      x.remove(i);
    }
  bob.show();
  bob.move();
}
public void keyPressed()
{
    if(key == 'a' || key == 'A'){
      bob.Hyperspace();
    }
    if(key == 'r' || key == 'R'){                 
      bob.turn(10);
    }
    if(key == 'q' || key == 'Q'){                 
      bob.turn(-10);
    }
    if(key == 'w' || key == 'W'){
      bob.accelerate(0.5);
    }
    if(key == 's' || key == 'S'){
      bob.accelerate(-0.5);
    }
}
