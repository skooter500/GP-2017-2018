void setup()
{
  size(500, 500);
  cx = width / 2;
  cy = height / 2;
}

float cx, cy;
float numCircles = 5;

void draw()
{
  background(0);
  numCircles = mouseX / 10;
  float d = width / numCircles;
  float r = d / 2;
  float y = height / 2;
  for(float x = r ; x <= width -r ; x+= d)
  {
    ellipse(x, y, d, d);
  }
  
  float x = d / 2;
  for(int i = 0 ; i < numCircles ; i ++)
  {
    ellipse(x, y + 100, d, d);
    x += d;
  }
  
  /*
  for(int x = 0 ; x <= width ; x += 20)
  {
    line(x, height, cx, cy);
  }
  
  float y = cy;
  float gap = 1;
  while(y <= height)
  {
    line(0, y, width, y);
    y += gap;
    gap += 2;
  }
  */
}