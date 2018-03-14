class Ship
{
  // Fields!! They are part of the ship
  float x, y;
  float fx, fy;
  float size = 150;
  float speed = 10;
  float theta = 0;
  
  // This method is called a constructor
  // Not return type and same name as the class
  Ship()
  {
    x = width / 2;
    y = height /2;
  }
  
  // Paramaterised constructor
  Ship(float x, float y)
  {
    this.x = x;
    this.y = y;
  }
  
  // Method
  void render()
  {
    pushMatrix();
    translate(x, y);
    rotate(theta);
    
    float halfS = size /2; 
    line(- halfS, halfS, 0, - halfS);
    line(0, - halfS, halfS, halfS);
    line(halfS, halfS, 0, 0);
    line(0, 0, - halfS, halfS);
    popMatrix();
  }
  
  void update()
  {
    fx = sin(theta);
    fy = - cos(theta);
    if (keyPressed)
    {
      if (keyCode == LEFT)
      {
        theta -= 0.01f;
      }
      if (keyCode == RIGHT)
      {
        theta += 0.01f;
      }
      if (keyCode == UP)
      {
        x += fx;
        y += fy;
      }
      if (keyCode == DOWN)
      {
        x -= fx;
        y -= fy;
      }
      
      if (key == ' ')
      {
        Bullet b = new Bullet(x, y, theta);
        bullets.add(b);
      }
      
    }
  }
}