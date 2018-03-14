class Bullet
{
  float x, y;
  float fx, fy;
  float theta;
  float speed;
  
  Bullet(float x, float y, float theta)
  {
    this.x = x;
    this.y = y;
    this.theta = theta;
    speed = 20;
  }
  
  void render()
  {
    stroke(100, 255, 255);
    pushMatrix();
    translate(x, y);
    rotate(theta);
    line(0, -5, 0, 5);
    
    popMatrix();
  }
  
  void update()
  {
    fx = sin(theta);
    fy = - cos(theta);
    
    x += fx * speed;
    y += fy * speed;
    
    
  }
}