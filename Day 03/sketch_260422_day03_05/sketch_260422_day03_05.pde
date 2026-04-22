void setup()
{
  size(400, 400);
  noStroke();
  fill(180, 50, 50, 100);
}

void draw()
{
  background(255);
  for (int row = 0; row < 10; row++)
  {
    if(row==3)
    {
      fill(#FF1212);
    }
    else
    {
      fill(180, 50, 50, 100);
    }
      
    for (int col = 0; col < 10; col++)
    {
      ellipse(20 + col * 40, 20 + row * 40, 30, 30);
    }
  }
}
