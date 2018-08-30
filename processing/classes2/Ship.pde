class Ship extends GameObject
{
  // Fields!! They are part of the ship
  float size = 150;
  float speed = 10;
  
  // This method is called a constructor
  // Not return type and same name as the class
  Ship()
  {
    // Call the constructor in GameObject
    super(width / 2, height / 2, 0);
  }
  
  // Paramaterised constructor
  Ship(float x, float y)
  {
    super(x, y, 0);
  }
  
  // Method
  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
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
    forward.x = sin(theta);
    forward.y = - cos(theta);
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
        pos.add(forward);
      }
      if (keyCode == DOWN)
      {
        pos.sub(forward);
      }
      
      if (key == ' ')
      {
        Bullet b = new Bullet(pos.x, pos.y, theta);
        gameObjects.add(b);
      }
      
    }
  }
}