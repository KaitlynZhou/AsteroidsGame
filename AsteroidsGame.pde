//your variable declarations here
Spaceship bob = new Spaceship();
Star[] stars;
public void setup() 
{
  //your code here
  size(500,500);
  stars = new Star[250];
  for(int i = 0; i<250; i++){
    stars[i]=new Star();
  }
}
public void draw() 
{
  //your code here
  background(0);
  for(int i = 0; i<stars.length; i++){
    stars[i].show();
  }
  bob.show();
  bob.move();
}
public void keyPressed()
{
  if(keyPressed){
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
}
