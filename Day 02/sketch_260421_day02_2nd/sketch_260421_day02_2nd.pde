void setup()
{
  size(1000,700);
}

void draw()
{
  if(mouseY>height/2)
  {
  fill(#0CEFF5);
  }

else
{
  fill(#F50CBB);
}
  ellipse(width/2,height/2,250,250);
}
