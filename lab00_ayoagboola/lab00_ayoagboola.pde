void setup() {
  size(1080, 920); 
}

void draw() {
  background(240, 235, 213); 
  stroke(44, 57, 71); 
  
  // rectangles
  fill(245, 243, 228); 
  strokeWeight(0);
  rect(0,0,1080,160); 
  rect(0,760,1080,920); 
  
  // stars
  strokeWeight(50); 
  pushMatrix();
  translate(width*0.25, height*0.65);
  rotate(frameCount / -80.0);
  star(); 
  popMatrix();
  
  strokeWeight(10);
  pushMatrix();
  translate(width*0.5, height*0.75);
  rotate(frameCount / 75.0);
  star(); 
  popMatrix();
  
  strokeWeight(50); 
  pushMatrix();
  translate(width*0.75, height*0.65);
  rotate(frameCount / -60.0);
  star(); 
  popMatrix();
  
  // curves
  strokeWeight(10); 
  curve(1); 
  curve(40); 
   
  // first a
  strokeWeight(50); 
  noFill();
  arc(360, 460, 300, 500, PI, TWO_PI);
  line(220, 375, 495, 375);
  
  // second a
  strokeWeight(50); 
  arc(720, 460, 300, 500, PI, TWO_PI);
  line(580, 375, 855, 375);
}

void star() {
  float angle = TWO_PI / 5;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float x = cos(a) * 70;
    float y = sin(a) * 70;
    vertex(x, y);
    x = cos(a+halfAngle) * 30;
    y = sin(a+halfAngle) * 30;
    vertex(x, y);
  }
  endShape(CLOSE);
}

void curve(float h) {
  noFill(); 
  beginShape(); 
  curveVertex(120, 100-h);
  curveVertex(120, 100-h);
  curveVertex(240, 140-h);
  curveVertex(360, 100-h);
  curveVertex(480, 140-h);
  curveVertex(600, 100-h);
  curveVertex(720, 140-h);
  curveVertex(840, 100-h);
  curveVertex(960, 140-h);
  curveVertex(960, 140-h);
  endShape();
}

//void dot() {
//  float factorX = random(-500, 501); 
//  float factorY = random(-500, 501); 
//  //beginShape();
//  //for (float i = 0; i < 50; i += 1) {
//  //  float x = factorX; 
//  //  float y = factorY;
//  //  point(540+x, 460+y); 
//  //}
//  //endShape(); 
//  float x = factorX; 
//  float y = factorY;
//  point(540+x, 460+y); 
//}
