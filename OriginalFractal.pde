Star [] shootingSky = new Star[150];

public void setup()
{
	size(500,500);
	for(int i = 0; i<shootingSky.length; i++)
  {
    shootingSky[i] = new Star();
  }
}

public void draw()
{	
	background(0);
	for(int i = 0;i<shootingSky.length; i++)
    {
      shootingSky[i].show();
    }
    myFractal(50,300,250);
}

public void myFractal(int x, int y, int siz)
{
	quad(x, y, x + siz/3, y - siz, x + siz*2/3, y - siz, x + siz, y);
	
	if(siz > 20)
	{	
		fill(138, 138, 138);
		myFractal(x, y, siz/2);
		fill(179, 179, 173);
		myFractal(x + siz/2, y, siz/2);
		fill(205, 203, 190);
		myFractal(x + siz/4, y - siz/2, siz/2 );
		fill(223, 221, 200);
		//myFractal(x + siz/4 , y - siz*2/3, siz/3 );
	}
}

class Star
{
  private int starX, starY,starSize;
  
  public Star()
  {
    starX = (int)(Math.random()*500);
    starY = (int)(Math.random()*500);
    starSize =(int)(Math.random()*4);
  }
  public void show()
  {
    fill(250,250,250);
    ellipse(starX,starY,starSize,starSize);
  }
}