class GameObject
{
  PVector pos;
  PVector forward;
  float theta;
  
  GameObject(float x, float y, float theta)
  {
    pos = new PVector(x, y);
    this.theta = theta;
    forward = new PVector(sin(theta), -cos(theta));
  }
  
  void update() {}
  void render() {}
}