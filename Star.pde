class Star{
  private int myX, myY;
  private int myColor;
  Star(){
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*1000);
    myColor = color((int)(Math.random()*256)+100,(int)(Math.random()*256)+100,(int)(Math.random()*256)+100);
  }
  public void show(){
    noStroke();
    fill(myColor);
    ellipse(myX, myY, 1.69, 1.69);
  }
}
