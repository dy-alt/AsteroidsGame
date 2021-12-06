 Star[]bob= new Star[500];
Spaceship [] mars = new Spaceship [5];
public void setup() 
{
  background(0);
  size(500,500);
  for(int i = 0; i<bob.length; i++){
    bob[i] = new Star();
  }
    for(int i = 0; i<mars.length; i++){
    mars[i] = new Spaceship();
  }
  mars[0].movetocenter();
}
public void draw() 
{
  background(0);
  for(int i = 0; i<bob.length; i++){
  bob[i].show();
  }
  for(int i = 0; i<mars.length; i++) {
    mars[i].show();
    mars[i].move();
 
    if(keyPressed){
    if(key == 'a'){
      mars[i].turn(-10);
    }
    if(key == 'd'){
      mars[i].turn(10);
    }
    if(key == 'w'){
      mars[i].accelerate(0.1);
    }
    if(key == 's'){
      mars[i].accelerate(-0.1);
    }
    if(key == 'h'){
     mars[i].hyperspace();
  
    }
    }
  }
  }
   
