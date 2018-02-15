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

void draw()
{
  background(0);
  stroke(255);
  float halfH = height / 2;
  for(int i = 0 ; i < ai.bufferSize(); i ++)
  {
    stroke(map(i, 0, ai.bufferSize(), 0, 255), 255, 255);
    line(i, halfH, i, halfH + (ai.left.get(i) * halfH)); 
  }
  
  fft.window(FFT.HAMMING);
  fft.forward(ai.left);
  
  for(int i = 0; i < fft.specSize() ; i ++)
  {
    stroke(map(i, 0, ai.bufferSize(), 0, 255), 255, 255);
    line(i, 0, i, fft.getBand(i) * 5);
  }
}