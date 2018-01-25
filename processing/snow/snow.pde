void setup()
{
  size(500, 500);
  colorMode(HSB);
  for(int i = 0 ; i < snowCount ; i ++)
  {
    sx[i] = random(0, width);
    sy[i] = random(-height, 0);
    sc[i] = color(random(0, 255), 255, 255);
    ss[i] = random(1, 5);
  }
}

int snowCount = 100;
float[] sx = new float[snowCount];
float[] sy = new float[snowCount];
float[] ss = new float[snowCount];
color[] sc = new color[snowCount];


void draw()
{
  background(0);
  strokeWeight(5);
  for(int i = 0 ; i < snowCount ; i ++)
  {
    stroke(sc[i]);
    point(sx[i], sy[i]);
    sy[i] += ss[i];
    if (sy[i] >= height)
    {
      sy[i] = 0;
      sx[i] = random(0, width);
      ss[i] = random(1, 5);
      sc[i] = color(random(0, 255), 255, 255);
    }
  }  
}