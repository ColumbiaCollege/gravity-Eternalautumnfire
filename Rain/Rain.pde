float yPos =0;
float yAcc= 10;
float shiftX = random(100, 900*0.9);
float shiftY = random(100, 100);
float ground = random(600);


void setup() {
  //Window size with background set to "sky blue"
  size (1200, 900);
  background (245);
  fill(#64491F);
  //Rectangle used for ground layer
  rect(0, 500, 1200, 500);
  fill(200);
  ellipse(600, 50, 1100, 100);
}

void draw() {
  background (225);
  fill(#64491F);
  //Rectangle used for ground layer
  rect(0, 500, 1200, 500);
  fill(200);
  ellipse(600, 50, 1100, 100);
  yPos+=shiftY;
  shiftY+=yAcc;
  for (int i =1; i<24; i++) {
    fill(#36EDFC);
    stroke(0);
    ellipse(shiftX, shiftY, 10, 25);
  }
  if (shiftY>random(500, 2000)) {
    shiftY=100;
    shiftX = random(100, 900*0.9);
  }
  fill(200);
  ellipse(600, 50, 1100, 100);
  redraw();
  loop();
}
