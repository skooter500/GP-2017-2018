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
  size(1024, 500);
  minim = new Minim(this);
  ai = minim.getLineIn(Minim.MONO, width, 44100, 16); 
  colorMode(HSB);
  fft = new FFT(width, 44100);
}

float la = 0;
float lc = 0;
void draw()
{
  background(0);
  stroke(255);
  float halfH = height / 2;
  float average = 0;
  for(int i = 0 ; i < ai.bufferSize(); i ++)
  {
    stroke(map(i, 0, ai.bufferSize(), 0, 255), 255, 255);
    line(i, halfH, i, halfH + (ai.left.get(i) * halfH)); 
    average += abs(ai.left.get(i));
  }
  average /= ai.bufferSize();
  
  
  float count = round(map(average, 0, 0.3, 0, 10));
  lc = lerp(lc, count, 0.1);
  for(int i = 0 ; i < (int) lc ; i++)
  {
    ellipse(i * 60, 200, 50, 50);
  }
  
  la = lerp(la, average, 0.1);
  rect(0, 0, 50, la  * 500);
  
  fft.window(FFT.HAMMING);
  fft.forward(ai.left);
  
  for(int i = 0; i < fft.specSize() ; i ++)
  {
    stroke(map(i, 0, ai.bufferSize(), 0, 255), 255, 255);
    line(i, 0, i, fft.getBand(i) * 5);
  }
}