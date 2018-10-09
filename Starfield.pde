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
	//your code here
}
class NormalParticle
{
	double myX,myY,myAngle,mySpeed;
}
interface Particle
{
	public void move();
  public void show();
}
class OddballParticle 
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}
