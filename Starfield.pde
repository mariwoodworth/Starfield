NormalParticle[] particles;
particles[0] = new OddballParticle();

void setup()
{
	particles = new NormalParticle[300];
        for(int nI = 0; nI < particles.length; nI++){
            particles[nI] = new NormalParticle();
        }

}
void draw()
{
	
}
class NormalParticle
{
	double myX,myY,myAngle,mySpeed;
  myX = 320;
  myY = 240;
  myAngle = (Math.PI)*2;
  mySpeed = (float)(Math.random)*10;
}
interface Particle
{
	public void move();
  public void show();
}
class OddballParticle 
{
	public void move()
  {
  }
  public void show()
  {
  }
}
class JumboParticle extends NormalParticle
{
	public void move()
  {
  }
  public void show()
  {
  }
}
