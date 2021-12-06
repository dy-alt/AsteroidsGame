class Spaceship extends Floater  
{   
    Spaceship(){
      corners = 3;
      xCorners= new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      myColor = color(0,102,204);
      myCenterX = 250;
      myCenterY= 250;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
    }
    public void hyperspace(){
      myCenterX = (int)(Math.random()*360);
      myCenterY = (int)(Math.random()*360);
      myXspeed = myYspeed = 0;
        mars[0].movetocenter();
    }
    public void setPos(double x, double y){
      myCenterX = x;
      myCenterY = y;
    }
    public void movetocenter() {
      mars[0].setPos(myCenterX,myCenterY);
      mars[1].setPos(myCenterX-20, myCenterY+20);
      mars[2].setPos(myCenterX-40, myCenterY+40);
      mars[3].setPos(myCenterX+20, myCenterY-20);
      mars[4].setPos(myCenterX+40,myCenterY-40);
    }
}
