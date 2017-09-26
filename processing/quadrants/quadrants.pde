void setup()
{
  size(500, 500);
  halfW = width / 2;
  halfH = height / 2;
}

float halfW, halfH;

void draw()
{
  background(0, 0, 255);
  noStroke();
  fill(255, 0, 0);
  if (mouseX < halfW && mouseY < halfH)
  {
    rect(0, 0, halfW, halfH);
  }
  else if (mouseX >= halfW && mouseY < halfH)
  {
    rect(halfW, 0, halfW, halfH);
  }
  else if (mouseX < halfW && mouseY > halfH)
  {
    rect(0, halfH, halfW, halfH);
  }
  else
  {
    rect(halfW, halfH, halfW, halfH);
  }
  
  println(sqrt(9));
  
  
  float a, b;
  b = 9;
  a = sqrt(b);
  a = pow(10, 2);
  a = 10 ^ 2;
  println(" 10 ^ 2: " + a);
}