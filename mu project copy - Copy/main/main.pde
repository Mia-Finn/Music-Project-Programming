import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioBuffer ab;
AudioInput ai;
AudioPlayer ap;

float startTime;
float songLength;
float [] lerpedBuffer = new float[1024];
//float lineWidth= width/1024.0;

//3D cube (Amelia)
float theta;
float speed=0.5;
float z=0;


void setup()
{
  background(0);
  
  fullScreen(P3D);

  colorMode(HSB);

  startTime = millis();

  minim = new Minim(this);
  ap = minim.loadFile("OnlyMP3.to - Cartoon - Why We Lose (Lyrics)-zTL6iep1ZKs-192k-1649942721551.mp3");
  ap.play();
  ab = ap.mix;

  songLength = ap.length();

  colorInc=255/(float)ab.size();

  A = new Amelia();
  //AN = new Andre();

  colorInc= 255/(float)ab.size();

  cx=width/2;
  cy=height/2;
}

Amelia A;
//Andre AN;


float lerpedAverage=0;
float halfH;
float colorInc;

//Spiral
float x, y;
float cx, cy;
float px, py;
float r=1;

void draw()
{
  // background(0);

  if (millis() - startTime > songLength/3)
  {
    A.movingCube();
  } else
  {
   // A.colourSpiral();
    A.pinkWave();
    //AN.musicWave();
  }


  if (millis() - startTime > songLength*2/3)
  {
    A.colourWave();
  }
}
