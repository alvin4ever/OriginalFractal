public void setup()
{
  size(500,500);
  ellipseMode(CENTER);
}

public void myFractal(int x, int y, int size){
ellipse(x,y,size,size);
if (size > 50)
{
  fill((float)Math.random()*256,(float)Math.random()*256,(float)Math.random()*256);
  myFractal(x+size/2,y,size/2);
  myFractal(x-size/2,y,size/2);
  myFractal(x,y+size/2,size/2);
  myFractal(x,y-size/2,size/2);
  fill(255,255,255);
  myFractal(x,y+size/3,size/4);
  myFractal(x,y-size/3,size/4);
  myFractal(x+size/3,y,size/4);
  myFractal(x-size/3,y,size/4);
  fill(255,255,255);
  myFractal(x+size/3,y,size/6);
  myFractal(x-size/3,y,size/6);
  myFractal(x,y+size/3,size/6);
  myFractal(x,y-size/3,size/6);
}
}

public void draw()
{
  background(0,0,0);
  myFractal(250,250,500);
}
