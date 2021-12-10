class Asteroid extends Floater{
  private double myTurnSpeed;
  Asteroid(){
    myXspeed=(Math.random()*2)-1;
    myYspeed=(Math.random()*2)-1;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*10)-11;
    yCorners[0] = (int)(Math.random()*10)-8;
    xCorners[1] = (int)(Math.random()*10)+7;
    yCorners[1] = (int)(Math.random()*10)-8;
    xCorners[2] = (int)(Math.random()*10)+13;
    yCorners[2] = (int)(Math.random()*10)+0; 
    xCorners[3] = (int)(Math.random()*10)+6;
    yCorners[3] = (int)(Math.random()*10)+10;
    xCorners[4] = (int)(Math.random()*10)-11;
    yCorners[4] = (int)(Math.random()*10)+0;
    xCorners[5] = (int)(Math.random()*10)-5;
    yCorners[5] = (int)(Math.random()*10)+0;
    myColor = color(74,89,99);
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myTurnSpeed = (int)(Math.random()*4)-2;
  }
  public void twerk(){
    turn(myTurnSpeed);
    super.move();
  }
  public float getX(){
    return (float)myCenterX;
  }
  public float getY(){
    return (float)myCenterY;
  }
}
