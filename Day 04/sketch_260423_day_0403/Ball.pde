class Ball //creating a ball
{ 
  //fieds / data
 
  float x,y;
  float radius;
  float vx,vy;
  color col;
  
  
  //constructor
  Ball(float startX , float startY , float r)
  {
    x=startX;
    y=startY;
    radius=r;
    vx=random(-3,5);
    vy=random(-3,5);
    col=color(random(255),random(255),random(255) );
  }
  void display()
  {
    fill(col);
    ellipse(x,y,radius,radius);
  }
  
  void update()
  {
    x=x+vx;
    y=y+vy;
    
    if((x+ radius > width) || (x - radius/2 < 0)) vx =-vx;
  
    
    if ((y + radius > height) || (y - radius/2 < 0)) vy=-vx;
   
    
  }
}
  
    
