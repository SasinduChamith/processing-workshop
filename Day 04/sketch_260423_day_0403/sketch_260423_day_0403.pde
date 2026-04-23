Ball[] balls;
int numBalls=500;


void setup()
{
  size(500,500);
  balls= new Ball[numBalls];
  
  for(int i=0; i<numBalls; i++)
  {
    balls[i]= new Ball (random(0,500),random(0,500),random(20,50));
  }
 
}

void draw()
{
  background(255);
 
  for(Ball b :balls)
  {
    b.display();
    b.update();
  }
  
}
    
