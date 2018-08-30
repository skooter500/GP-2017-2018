void setup()
{
  colorMode(HSB);
  size(1920, 1080);
  gameObjects.add(new Ship());
  
  add100Ships();  
  strokeWeight(5);
  // Example of polymorphism
  GameObject go = new Ship();
  go = new Bullet(10, 10, 0);
  go = new FollowMouseShip();
  
}


void add100Ships()
{
  for(int i = 0 ; i < 100 ; i ++)
  {
    gameObjects.add(new FollowMouseShip(random(0, width), random(0, height)));
  }
}

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

void draw()
{
  background(0);
  stroke(255);
  for(int i = 0 ; i < gameObjects.size() ; i ++)
  {
    GameObject go = gameObjects.get(i);
    go.render();
    go.update();
  }
  
 
  if (keyPressed && key == ' ')
  {
    //add100Ships();
  }
  
} 