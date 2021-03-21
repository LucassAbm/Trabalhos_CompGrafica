void setup() {
  size (600, 600);
}

void draw() {
  background(#0A034A);
  pushMatrix();
  translate(width/2,height/2);
  //float t = map(mouseY,0,-width,100,200);
  //float n = map(mouseY,0,-width,50,100);
  float t = map(mouseY,0,-width,-100,-200);
  float n = map(mouseY,0,-width,-50,-100);
  rotate(frameCount/100.0);
  estrela(0,0,50,t);
  estrela(200,0,30,n);
  estrela(-200,0,30,n);
  estrela(0,200,30,n);
  estrela(0,-200,30,n);
  noStroke();
  //stroke(0);
  //strokeWeight(2);
  fill(#FFFFFF);
  popMatrix();
}

void estrela(float eixoX, float eixoY, float raio1, float raio2) {
  float t2 = round(map(mouseX,100,height-20,2,10));
  float angle = TWO_PI/t2;
  float halfAngle = angle/2.0;
  beginShape();
  for(float a = 0; a < TWO_PI; a += angle){
    float sx = eixoX + cos(a) * raio2;
    float sy = eixoY + sin(a) * raio2;
    vertex(sx,sy);
    float tx = eixoX + cos(a+halfAngle) * raio1;
    float ty = eixoY + sin(a+halfAngle) * raio1;
    vertex(tx,ty);
  }
  endShape(CLOSE);
}
