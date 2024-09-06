void setup() {
  size(1080, 920); 
}

void draw() {
  background(200, 224, 224); 
  stroke(55, 58, 74); 
  
  // rectangles
  fill(223, 227, 230); 
  strokeWeight(0);
  rect(0,0,1080,100); 
  rect(0, 860,1080,920); 
  
  // main shapes
  strokeWeight(5); 
  pushMatrix(); 
  translate(width*0.5, height*0.5);
  fill(129, 156, 161);
  curves(); 
  
  // to "flip" the second shape
  scale(-1); 
  curves(); 
  popMatrix(); 
  
  // stars
  strokeWeight(50); 
  pushMatrix();
  translate(width*0.25, height*0.6);
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
  translate(width*0.65, height*0.25);
  rotate(frameCount / -60.0);
  star(); 
  popMatrix();
 
}

// curves function
void curves() {
  beginShape();
  vertex(30, 20);
  bezierVertex(360, 0, 360, 300, 90, 300);
  bezierVertex(200, 320, 240, 100, 30, 20);
  endShape();
}

// star function
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
