class FollowMouseShip
{
  // Fields!! They are part of the ship
  float x, y;
  float fx, fy;
  float size = 50;
  float speed = 10;
  float theta = 0;
  color c;
  
  // This method is called a constructor
  // Not return type and same name as the class
  FollowMouseShip()
  {
    x = random(0, width);
    y = random(0, height);
    c = color(random(0, 255), 255, 255);
  }
  
  // Paramaterised constructor
  FollowMouseShip(float x, float y)
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
    stroke(c);
    float halfS = size /2; 
    line(- halfS, halfS, 0, - halfS);
    line(0, - halfS, halfS, halfS);
    line(halfS, halfS, 0, 0);
    line(0, 0, - halfS, halfS);
    popMatrix();
  }
  
  void update()
  {
    theta = atan2(mouseY - y, mouseX-x) + HALF_PI;
    fx = sin(theta);
    fy = - cos(theta);
    x += fx;
    y += fy;
    
    if (dist(mouseX, mouseY, x, y) < 5)
    {
       x = random(0, width);
    y = random(0, height);
    c = color(random(0, 255), 255, 255);
    }
  }
}