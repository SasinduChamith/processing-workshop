int btnX =140;
int btnY =160;
int btnW =120;
int btnH= 50;


boolean isOn = false;

void setup()
{
  size(500, 500);
  x=150;
  y=150;
}

void draw()
{
  background(255);

  rect(x, y, 150, 100);

  if (isOn)
  {
    fill(255, 0, 0);
  } else
  {
    fill(255, 0, 0);
  }
}


rect (btnX, btnY, btnw, btnH);
fill(255);
textAlign(CENTER, CENTER);

if (isOn)
{
  text("ON", btnX+btnW/2, btnY+btnH/2);
} else
{
  text("OFF", btnX+btnW/2, btnY+btnH/2);
}
}
void mousePressed()
{
  if (mouseX > btnX && mouseY < btnX +btnw &&
    mouseY > btny && mouseY < btnY +btnH)
  {
    isOn =!isOn;
  }
}
