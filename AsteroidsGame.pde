//your variable declarations here
Star[]bob= new Star[500];
Spaceship mars;  
public void setup() 
{
  background(0);
  size(500,500);
  for(int i = 0; i<bob.length; i++){
    bob[i] = new Star();
    mars = new Spaceship();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i<bob.length; i++){
  bob[i].show();
  }
    if(keyPressed){
    if(key == 'a'){
      mars.turn(-10);
    }
    if(key == 'd'){
      mars.turn(10);
    }
    if(key == 'w'){
      mars.accelerate(0.1);
    }
    if(key == 's'){
      mars.accelerate(-0.1);
    }
  }
   mars.move();
  mars.show();
}
