Particle[] bob;

void setup()
{
  size(500, 500);
	bob = new Particle[1000];
  for (int i=0; i<bob.length; i++)
  {
    bob[i] = new NormalParticle();
    bob[2] = new OddballParticle();
    bob[0] = new JumboParticle();
  }
}
void draw()
{
	background(0);
  for(int i=0; i<bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
  }
}

class NormalParticle implements Particle
{
	double myX,myY,myAngle,mySpeed;
  
  NormalParticle()
  {
    myX = 250;
    myY = 250;
    myAngle = (Math.random()*8)-2;
  }
  
  public void move() 
  {
    mySpeed = (Math.random()*10)-3;
    myX = myX + (Math.cos(myAngle)*mySpeed);
    myY = myY + (Math.sin(myAngle)*mySpeed);
  }
  
  public void show() 
  {
    fill((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
    ellipse((int)myX, (int)myY, 5, 5);
  }
}
interface Particle
{
	public void move();
  public void show();
}
class OddballParticle implements Particle
{
  double myX, myY, mySpeed, myAngle;
  OddballParticle()
  {
    myY = 90;
    myX = 100;
    mySpeed = (Math.random()*10)-3;
    
  }
	public void move()
  {
    mySpeed = (Math.random()*10)-8;
    myX = myX + Math.cos(myAngle);
    myY = myY + Math.sin(myAngle);
  }
  public void show()
  {
    fill(167, 117, 250);
    ellipse((float)myX, (float)myY, 70, 30);
    fill(60);
    ellipse((float)myX, (float)myY-10, 30, 25); //top cover
    fill(230);
    ellipse((float)myX, (float)myY-5, 20, 15); //control pad
    fill(56, 234, 54);
    ellipse((float)myX, (float)myY-10, 10, 14); //alien
  }
}
class JumboParticle extends NormalParticle
{
  public void show()
  {
    fill(95, 25, 209);
    ellipse((float)myX, (float)myY, 70, 70);
  }
}
