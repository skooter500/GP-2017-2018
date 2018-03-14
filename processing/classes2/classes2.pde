void setup()
{
  colorMode(HSB);
  size(1920, 1080);
  s = new Ship();
  
  add100Ships();
  
  strokeWeight(5);
}

void add100Ships()
{
  for(int i = 0 ; i < 100 ; i ++)
  {
    fms.add(new FollowMouseShip(random(0, width), random(0, height)));
  }
}

Ship s;

ArrayList<FollowMouseShip> fms = new ArrayList<FollowMouseShip>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();

void draw()
{
  background(0);
  stroke(255);
  s.render();
  s.update();
  for(Bullet b:bullets)
  {
    b.render();
    b.update();
  }
  
  /*
  for(int i = 0 ; i < fms.size() ; i ++)
  {
    fms.get(i).update();
    fms.get(i).render();
  }
  */
  if (keyPressed && key == ' ')
  {
    //add100Ships();
  }
  
} 