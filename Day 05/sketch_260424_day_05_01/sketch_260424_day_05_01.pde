int x;
int y;


void setup()
{
  size(600,600);
  x=100;
  y=100;
  
  
  
}


void draw()
{
  background(255);
  fill(255,0,0);
  rect(x,y,60,30);
  
  
}
void keyPressed()
{
  if (key == 'a' ) {x=x-5;}
  if (key == 'd' ) {x=x+5;}
  if (key == 'w' ) {y=y-5;}
  if (key == 's' ) {y=y+5;}
  
  
}
