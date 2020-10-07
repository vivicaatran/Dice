
void setup()
{
  size(505, 600);
  noLoop();
}
void draw()
{
  background(0);
  int total=0;
  total=0;
  for (int x= 0; x <= 500; x+=65)
  {
    for (int y= 0; y <= 500; y+=65)
    {
      Die bob = new Die(y, x);
      bob.show();

      total+=bob.roll;
    }
  }
  fill(255);
  text( "TOTAL SUM: " + total, 205, 550);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, roll, total;
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
    roll();
  }
  void roll()
  {
    roll = (int)(Math.random() * 6 + 1);
  }
  void show()
  {
    if (roll == 1)
    {
      fill(180, 229, 250);
      rect(myX, myY, 50, 50, 10);
      fill(0);
      ellipse(50-13+myX-12, 50-13+myY-12, 8, 8);
    } else if (roll==2)
    {
      fill(153, 242, 233);
      rect(myX, myY, 50, 50, 10);
      fill(0);
      ellipse(45+myX-10, 28+myY-12, 8, 8);
      ellipse(29+myX-10, 45+myY-12, 8, 8);
    } else if (roll==3)
    {
      fill(153, 206, 242);
      rect(myX, myY, 50, 50, 10);
      fill(0);
      ellipse(45+myX-10, 27+myY-12, 8, 8);
      ellipse(35+myX-10, 37+myY-12, 8, 8);
      ellipse(25+myX-10, 47+myY-12, 8, 8);
    } else if (roll==4)
    {
      fill(197, 153, 242);
      rect(myX, myY, 50, 50, 10);
      fill(0);
      ellipse(45+myX-10, 28+myY-12, 8, 8);
      ellipse(25+myX-10, 28+myY-12, 8, 8);
      ellipse(45+myX-10, 47+myY-12, 8, 8);
      ellipse(25+myX-10, 47+myY-12, 8, 8);
    } else if (roll==5)
    {
      fill(180, 250, 221);
      rect(myX, myY, 50, 50, 10);
      fill(0);
      ellipse(45+myX-10, 28+myY-12, 8, 8);
      ellipse(25+myX-10, 28+myY-12, 8, 8);
      ellipse(45+myX-10, 47+myY-12, 8, 8);
      ellipse(25+myX-10, 47+myY-12, 8, 8);
      ellipse(35+myX-10, 37+myY-12, 8, 8);
    } else
    {
      fill(153, 157, 242);
      rect(myX, myY, 50, 50, 10);
      fill(0);
      ellipse(45+myX-10, 28-2+myY-12, 8, 8);
      ellipse(25+myX-10, 28-2+myY-12, 8, 8);
      ellipse(45+myX-10, 47+2+myY-12, 8, 8);
      ellipse(25+myX-10, 47+2+myY-12, 8, 8);
      ellipse(45+myX-10, 47-10+myY-12, 8, 8);
      ellipse(25+myX-10, 47-10+myY-12, 8, 8);
    }
  }
}
