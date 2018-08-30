class Bullet extends GameObject
{
  float speed;
  
  Bullet(float x, float y, float theta)
  {
    super(x, y, theta);
    speed = 20;
  }
  
  void render()
  {
    stroke(100, 255, 255);
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(theta);
    line(0, -5, 0, 5);
    
    popMatrix();
  }
  
  void update()
  {
    forward.x = sin(theta);
    forward.y = - cos(theta);
    
    // pos += forward * speed;
    pos.add(PVector.mult(forward, speed));
    
  }
}