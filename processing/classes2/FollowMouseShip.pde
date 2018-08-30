class FollowMouseShip extends GameObject
{
  // Fields!! They are part of the ship
  float size = 50;
  float speed = 10;
  color c;
  
  // This method is called a constructor
  // Not return type and same name as the class
  FollowMouseShip()
  {
    super(random(0, width), random(0, height), 0.0f);
    c = color(random(0, 255), 255, 255);
  }
  
  // Paramaterised constructor
  FollowMouseShip(float x, float y)
  {
    super(x, y, 0);
    c = color(random(0, 255), 255, 255);
  }
  
  // Method
  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
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
    theta = atan2(mouseY - pos.y, mouseX-pos.x) + HALF_PI;
    forward.x = sin(theta);
    forward.y = - cos(theta);
    pos.add(forward);
    
    if (dist(mouseX, mouseY, pos.x, pos.y) < 5)
    {
       pos.x = random(0, width);
      pos.y = random(0, height);
    c = color(random(0, 255), 255, 255);
    }
  }
}