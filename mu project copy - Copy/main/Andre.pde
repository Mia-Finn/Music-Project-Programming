/*

class Andre {
  
  float lerpedAverage= 0;
  float halfH;
  float colorInc;
  float [] lerpedBuffer=new float [1024];
  
  void musicWave()
  {
    stroke(500);
    float sum = 0;
    for (int i = 0; i<ab.size(); i++)
    {
      stroke(colorInc * i, 255, 255);
      lerpedBuffer[i] = lerp(lerpedBuffer[i], ab.get(i), 0.1f);
      stroke(colorInc * i, 255, 255);
      line(i, halfH, i, halfH+ab.get(i)*halfH);
      sum += abs(ab.get(i));
      line(i, halfH-lerpedBuffer[i]*halfH * 4f, halfH+lerpedBuffer[i]*halfH * 4.0f, i);
    }

    stroke(255);
    //line(i, 150-ab.get(i)*halfH, i, 150+ab.get(i)*halfH);


    float average = sum / (float)ab.size();
    lerpedAverage = lerp(lerpedAverage, average, .5f);
    fill(#40BF8F);
    colorMode(HSB);
    circle(width / 2.2, height / 2.2, lerpedAverage * 2000);
  }
}
  
  */
