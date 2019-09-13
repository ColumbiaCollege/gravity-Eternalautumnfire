//Rain
//Jeremiah Wilson 12 Spet 2019
//set of variables for gravity and random x and y shifts for the rain drop
float yPos =0;
float yAcc= 10;
float shiftX = random(100, 900*0.9);
float shiftY = random(100, 100);


void setup() {
  //Window size with background set to "sky grey"
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
  //ellipse for cloud
  fill(200);
  ellipse(600, 50, 1100, 100);
  //Adds variables together to simulate gravity
  yPos+=shiftY;
  shiftY+=yAcc;
  //For loop function creating a raindrop at random positions (24 on top of each other realistically)
  for (int i =1; i<24; i++) {
    fill(#36EDFC);
    stroke(0);
    ellipse(shiftX, shiftY, 10, 25);
  }
  //Threshold for termination and reset of raindrop that simulates the rain hitting different parts of the ground
  if (shiftY>random(500, 2000)) {
    shiftY=100;
    shiftX = random(100, 900*0.9);
  }
  redraw();
  loop();
}
