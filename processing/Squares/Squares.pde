void setup()
{
  size(1280, 720);
  px = 10;
  py = (height / 2) - (size / 2);
  noStroke();
  colorMode(HSB);
  initEnemies();
}

void initEnemies()
{
  for(int i = 0 ; i < numEnemies ; i ++)
  {
    ex[i] = random(width, width * 2);
    ey[i] = random(0, height - size);
    ec[i] = color(random(0, 255), 255, 255);
  }
}

int numEnemies = 10;
float[] ex = new float[numEnemies];
float[] ey = new float[numEnemies];
color ec[] = new color[numEnemies];

float px, py;
float size = 20;
int lives = 5;



void playerStuff()
{
    if (checkKey('w') && py > 0)
    {
      py -=5;
    }
    if (checkKey('s') && py < height - size)
    {
      py +=5;
    }
    fill(255);
    rect(px, py, 20, 20);    
}

void enemyStuff()
{
  for(int i = 0 ; i < numEnemies ; i ++)
  {
    fill(ec[i]);    
    rect(ex[i], ey[i], size, size);
    ex[i] -= 3;
    if (ex[i] < -size)
    {
      ex[i] = width; //<>//
      ey[i] = random(0, height - size);
      ec[i] = color(random(0, 255), 255, 255);
    }
  }
}

void checkCollisions()
{
  // Player center
  float pcx = px + size / 2;
  float pcy = py + size / 2;
  for(int i = 0 ; i < numEnemies ; i ++)
  {
    if (pcx >= ex[i] && pcx <= ex[i] + size && pcy >= ey[i] && pcy <= ey[i] + size)
    {
      lives --;
      ex[i] = width;
    }
  }
  
}

void draw()
{ 
  background(0);
  if (lives > 0)
  {
    playerStuff();
    enemyStuff();
    checkCollisions();
    fill(255);
    text("Lives: " + lives, 10, 20);
  }
  else
  {
    fill(255);
    textAlign(CENTER, CENTER);
    text("Game Over", width / 2, height / 2);
  }
}

boolean[] keys = new boolean[1024];

boolean checkKey(int k)
{
  if (keys.length >= k) 
  {
    return keys[k] || keys[Character.toUpperCase(k)];  
  }
  return false;
}

void keyPressed()
{ 
  keys[keyCode] = true;
}
 
void keyReleased()
{
  keys[keyCode] = false; 
}