class Amelia {

  void colourWave()
  {
    background(0);
    float sum=0;
    for (int i=0; i<ab.size(); i++)
    {
      stroke(colorInc*i, 255, 255);
      line(i*width/1024.0, height/2, i*width/1024.0, (height/2)+ab.get(i)*250);
      sum+=abs(ab.get(i));
    }
    float average=sum/(float)ab.size();
    lerpedAverage=lerp(lerpedAverage, average, 0.1f);
  }

  void pinkWave()
  {
    background(0);
    //  background(#877D84);
   // stroke(#f0b6d5);
    stroke(#FF0055);
    float sum=0;

    for (int i=0; i<ab.size(); i++)
    {
      line(i*width/1024.0, height/1, i*width/1024.0, (height/1)+ab.get(i)*500);
      line(i*width/1024.0, height/700, i*width/1024.0, (height/700)+ab.get(i)*500);
      sum+=abs(ab.get(i));
    }

    float average=sum/(float)ab.size();
    lerpedAverage=lerp(lerpedAverage, average, 0.1f);
  }

  void movingCube()
  {
    float total=0;
    for (int i=0; i<ab.size(); i++)
    {
      total +=abs(ab.get(i));
    }
    float average=total/(float)ab.size();
    lerpedAverage=lerp(lerpedAverage, average, 0.1f);

    background(0);
    noFill();
    strokeWeight(2);

    if (millis() - startTime > songLength*1.23/3)
    {
      stroke(#00FFD5);
    } else
    {
      stroke(#FF9500);
    }
     if (millis() - startTime > songLength*1.3/3)
    {
      stroke(#C5EA10);
    }
    if (millis() - startTime > songLength*1.6/3)
    {
      stroke(#C03FE4);
    }

    pushMatrix();
    z=z-1;
    translate(width/2, height/2, 0);
    rotateY(theta);
    theta+=speed;
    float size=map(average, 0, 1, 100, 500);
    box(size*2);
    popMatrix();
  }

  void colourSpiral()
  {
    x=cx+sin(theta)*r;
    y=cy-cos(theta)*r;

    noStroke();
    strokeWeight(3);
    stroke(r%255, 255, 255);
    fill(0);
    circle(x, y, r);
    theta+=0.9f;
    r+=1;
  }
}
