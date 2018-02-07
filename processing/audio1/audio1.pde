import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioInput ai;
FFT fft;

void setup()
{
  size(1024, 1024);
  minim = new Minim(this);
  ai = minim.getLineIn(Minim.MONO, width, 44100, 16); 
  colorMode(HSB);
  fft = new FFT(width, 44100);
  y = height / 2;
}

float y;

void draw()
{
  background(0);
  stroke(255);
  float halfH = height / 2;
  float average = 0;
  for(int i = 0 ; i < ai.bufferSize(); i ++)
  {
    stroke(map(i, 0, ai.bufferSize(), 0, 255), 255, 255);
    line(i, halfH, i, halfH + ai.left.get(i) * halfH);
    average += abs(ai.left.get(i));
    
  }
  average /= ai.bufferSize();
  //println(average);
  
  fft.window(FFT.HAMMING);
  fft.forward(ai.left);
  float max = 0;
  int maxIndex = 0;
  for(int i = 0; i < fft.specSize() ; i ++)
  {
    stroke(map(i, 0, ai.bufferSize(), 0, 255), 255, 255);
    line(i, 0, i, fft.getBand(i) * 5);
    if (fft.getBand(i) > max)
    {
      max = fft.getBand(i);
      maxIndex = i;
    }
  }
  
   if (average > 0.1)
   {     
     y = lerp(y, map(maxIndex, 20, 50, height , 0), 0.1f);
     noStroke();
     fill(map(maxIndex, 20, 50, 0, 255), 255, 255);
     ellipse(width / 2, y, 100, 100);
    }
   
   // Examples of map and lerp
   /*
   println(map1(5, 0, 10, 100, 200));
   
   println(lerp1(22, 24, 0.5));
   */
   noStroke();
   
   yy += random(-10, 10);
   fill(200, 255, 255);
   ellipse(250, yy, 50, 50);
   
   fill(100, 255, 255);
   yyy = lerp(yyy, yy, 0.1f);
   ellipse(350, yyy, 50, 50);
}

float yy = 250;
float yyy = yy;


// And this is how they work!
float map1(float x, float r1, float r2, float r3, float r4)
{
  float range1 = r2 - r1;
  float range2 = r4 - r3;
  
  float howFar = x - r1;
  
  return r3 + (howFar * (range2 / range1));  
}

float lerp1(float a, float b, float t)
{
  return a + (b - a) * t;
}