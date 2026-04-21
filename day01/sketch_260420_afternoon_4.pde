void setup()
{
  size(400,400);
  noStroke();
}

void draw()
{
  color skyColor = color(157,238,247);
  color groundcolor = color(156,245,170);
  color leafcolor = color(82,144,97);
  color trunkcolor = color(95,57,26);
  
  background(skyColor);
 
  //ground colour
  
  fill(groundcolor);
  rect(0,height/2,width,height/2);
  //rect(0,200,400,200);
  
  
  //tree trunk
  
  fill(trunkcolor);
  rect(80,150,20,200);
  
  //leaves colour
  
  fill(leafcolor);
  ellipse(90,120,70,90);
  
  String welcomemassage ="Hello from university of vavuniya";
  textAlign(CENTER,CENTER);
  text(welcomemassage,width/2,height/2);
  
  
  
  
 
}
