void setup()
{
  size(500, 500);
}

void draw()
{
  background(0);
  
  // A solution that doesnt use map
  float border = width * 0.1f;
  float drawable = width * 0.8f;
  float gap = drawable / 10.0f;
  textAlign(CENTER, CENTER);
  float pos = border;
  for(int xg = -5 ; xg <= 5 ; xg ++)
  {
    fill(255);
    text(xg, pos, border * 0.5);
    text(xg, border * 0.5, pos);
    
    stroke(0, 255, 0);
    line(pos, border, pos, height - border);
    line(border, pos, width - border, pos);   
    pos += gap;
  }
}