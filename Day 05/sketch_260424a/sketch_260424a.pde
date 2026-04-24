PImage img;

void setup() {
  size(800, 800);
  img = loadImage ("flower.jpg");
  img.resize(width, height);
  background(0);
}


void draw()
{
  //image(img,0,0);
  color c = img.get(mouseX, mouseY);
  if (mouseButton == RIGHT)
  {
    c=color(0);
  } else
  {
    c= img.get(mouseX, mouseY);
  }
  float speed = dist(pmouseX, pmouseY, mouseX, mouseY);
  float size =map(speed, 0, 50, 5, 40);
  //fill(c);
  stroke(c);
  strokeWeight(20);

  line(pmouseX, pmouseY, mouseX, mouseY);
}
void keyPressed()
{
  if (key == 'c' || key =='c')
  {
    background(0);
  }
  if (key == 's' || key == 's')
  {
    save("file.png");
  }
}
