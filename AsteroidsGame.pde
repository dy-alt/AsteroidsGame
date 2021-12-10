//your variable declarations here
Star[]bob= new Star[500];
Spaceship mars; 
Asteroid poop;
ArrayList <Asteroid> bruno = new ArrayList <Asteroid> ();
public void setup() 
{
  background(0);
  size(500,500);
  for(int i = 0; i<bob.length; i++){
    bob[i] = new Star();
    mars = new Spaceship();
    poop = new Asteroid();
  }
   for(int i = 0; i<20; i++){
     bruno.add(new Asteroid());
     
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
    if(key == 'h'){
     mars.hyperspace();
      
    }
  }
   mars.move();
  mars.show();
  for(int i = 0; i<bruno.size();i++){
  bruno.get(i).show();
  bruno.get(i).twerk();
  }
  for(int i = 0; i<bruno.size(); i++){
  float d = dist(mars.getX(), mars.getY(), bruno.get(i).getX(), bruno.get(i).getY());
  if (d<20)
    bruno.remove(i);
  }
}
