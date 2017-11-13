void setup()
{
  size(500, 500);
  
  bugSize = 50;
  playerWidth = 100;
  playerHeight = 50;
  halfBug = bugSize / 2;
  bugX = random(halfBug, width - halfBug);
  bugY = bugSize * 2;
  halfPlayer = playerWidth / 2;
  cx = width / 2;
  cy = height / 2;
  
  playerX = cx;
  playerY = height - (playerHeight * 2);
}

void drawBug()
{
  // Put code in here to draw the bug
  line(bugX - halfBug, bugY + halfBug, bugX, bugY - halfBug);
  line(bugX, bugY - halfBug, bugX + halfBug, bugY + halfBug);
  line(bugX + halfBug, bugY + halfBug, bugX, bugY);
  line(bugX, bugY, bugX - halfBug, bugY + halfBug);
  line(bugX - (halfBug * 0.1), bugY - (halfBug * 0.6), 
    bugX - (halfBug * 0.1), bugY - (halfBug * 0.1));
  line(bugX + (halfBug * 0.1), bugY - (halfBug * 0.6), 
    bugX + (halfBug * 0.1), bugY - (halfBug * 0.1));
}

void drawPlayer()
{
  // Put code in here to draw the player
  noFill();
  float halfPlayerHeight = playerHeight * 0.5;
  rect(playerX, playerY, playerWidth, playerHeight);
  line(playerX, playerY - halfPlayerHeight, playerX, playerY - (halfPlayerHeight * 2));
  
  
}

float bugX, bugY;
float playerX, playerY;
int score;
float cx, cy;
float bugSize;
float halfPlayer;
float playerWidth, playerHeight;
float halfBug;
float playerSpeed = 5;

void movePlayer()
{
  if (keyPressed)
  {
    if (keyCode == LEFT && playerX > halfPlayer)
    {
      playerX -= playerSpeed;
    }
    if (keyCode == RIGHT && playerX < width - halfPlayer)
    {
      playerX += playerSpeed;
    }
  }
}

void moveBug()
{
  if (frameCount % 30 == 0)
  {
    bugY += 5;
  }
}

void draw()
{
  rectMode(CENTER);
  background(0);
  stroke(255);
  strokeWeight(2);
  drawBug();  
  drawPlayer();
  
  movePlayer();
  moveBug();
}