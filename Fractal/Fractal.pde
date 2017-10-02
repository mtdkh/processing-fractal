
int color_value = 0;
boolean flag=true;

void setup() {
  size(600, 600);
  strokeWeight(5);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  drawFrac(600, color_value);

  if (color_value>255) {
    flag=false;
  }
  if (color_value<0) {
    flag=true;
  }

  if (flag) {
    color_value++;
  } 
  else {
    color_value--;
  }
}

void drawFrac(int size, int color_value) {
  if (size < 1) {
    return;
  }
  rotate(radians(color_value));
  rect(-size/2, -size/2, size, size);

  rotate(radians(45));
  stroke(size, color_value, 255-size);
  fill(255-size, color_value, size);
  drawFrac(int(size/sqrt(2)), color_value);
}

