

void setup() {
  size(600, 600); 
  background(233, 245, 237); 
}

void draw() {
  body(); 
  head(); 
}

void head() {
  // ear 2
  fill(191, 227, 177); 
  stroke(92, 125, 86); 
  quad(320, 220, 345, 235, 355, 205, 330, 195); 
  
  // main head
  strokeWeight(2);
  fill(194, 229, 237); 
  stroke(76, 113, 133); 
  circle(300, 250, 100); 
  
  // ear 1
  fill(191, 227, 177); 
  stroke(92, 125, 86); 
  triangle(252, 230, 280, 210, 250, 197); 
}

void body() {
  fill(193, 232, 220);
  stroke(106, 145, 136); 
  rect(265, 280, 70, 100); 
}

void leg() {
  
}
