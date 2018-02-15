void setup()
{
  size(500, 500);
  s = new Ship();
  s1 = new Ship(10, 10);
}

Ship s;
Ship s1;

void draw()
{
  background(0);
  stroke(255);
  s.render();
  s1.render();
  s.update();
  s1.update();
} 