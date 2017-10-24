void setup()
{
  size(500, 500);
  cx = width / 2;
  cy = height / 2;
}

float cx, cy;
float r = 50;

void draw()
{
  background(0);
  float d = dist(mouseX, cx, mouseY, cy);
  if (d < r)
  {
    fill(255, 0, 0);
  }
  else
  {
    fill(0, 0, 255);
  }
  ellipse(cx, cx, r * 2, r * 2);
}