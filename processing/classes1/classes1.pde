void setup()
{
  colorMode(HSB);
  size(1920, 1080);
  s = new Ship();
  for(int i = 0 ; i < 100 ; i ++)
  {
    ships[i] = new FollowMouseShip();
  }
}

Ship s;
FollowMouseShip[] ships = new FollowMouseShip[100]; 

void draw()
{
  background(0);
  stroke(255);
  s.render();

  s.update();
  for(int i = 0 ; i < 100 ; i ++)
  {
    ships[i].update();
    ships[i].render();
  }
} 