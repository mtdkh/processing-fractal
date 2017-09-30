int iro = 0;
boolean flag=true;

void setup() {
  size(600, 600);
  strokeWeight(5);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  drawFrac(600, iro);

  if (iro>255) {
    flag=false;
  }
  if (iro<0) {
    flag=true;
  }

  if (flag) {
    iro++;
  } 
  else {
    iro--;
  }
}

void drawFrac(int size, int iro) {
  if (size < 1) {
    return;
  }
  rotate(radians(iro));
  rect(-size/2, -size/2, size, size);

  rotate(radians(45));
  stroke(size, iro, 255-size);
  fill(255-size, iro, size);
  drawFrac(int(size/sqrt(2)), iro);
}

