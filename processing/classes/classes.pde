void setup()
{
  size(1000, 1000);
  strokeWeight(5);
  colorMode(HSB);
  s = new Ship();
  s1 = new Ship(10, 10);
  fms = new FollowMouseShip(random(0, width), random(0, height));
  
}

Ship s;
Ship s1;
FollowMouseShip fms;

void draw()
{

  background(0);
  stroke(255);
  s.render();
  s1.render();
  s.update();
  s1.update();
  fms.update();
  fms.render();
} 