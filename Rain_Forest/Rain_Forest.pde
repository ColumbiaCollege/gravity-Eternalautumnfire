//Forest sketch
//Jeremiah Wilson 10 Sept 2019
//Sets global variable i equal to 0
int i = 0;  

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
  //background (225);
  //fill(#64491F);
  ////Rectangle used for ground layer
  //rect(0, 500, 1200, 500);
  //fill(200);
  //ellipse(600, 50, 1100, 100);
  //yPos+=shiftY;
  //shiftY+=yAcc;
  //for (int a =1; a<24; a++) {
  //  fill(#36EDFC);
  //  stroke(0);
  //  ellipse(shiftX, shiftY, 10, 25);
  //}
  //if (shiftY>random(500, 2000)) {
  //  shiftY=100;
  //  shiftX = random(100, 900*0.9);
  //}
  //fill(200);
  //ellipse(600, 50, 1100, 100);
  //redraw();
  //loop();

  //Function while acts like a for loop to continuosly execute the draw function until i is greater than 60. When i is greater than 60 the draw command ceases.
  while (i<60) {

    //Increments i by 1 each time the loop is run
    i++;

    //Stroke set to black
    stroke(#463822);

    //Stroke weight set to 1.5
    strokeWeight(1.5);

    //Fill color brown for tree stump
    fill(#AF7F35);

    //Sets variables for tree placement in the x and y range and random intervals not to exceed the ground rectangle in the y column.
    float shiftX = random(1, 1300*0.9);
    float shiftY = random(500, 400*2);

    //sets a size range to be picked at random later for the tree canopy between 60 and 130 pixels.
    float canopySize = random(60, 130);

    //Rectangle for tree stump at random placements.
    rect(shiftX, shiftY, 20, 150);

    //Fill color green for tree canopy.
    fill(#42A03C);

    //Creates an ellipse at a random position and size coincident with the stump.
    ellipse(shiftX, shiftY, canopySize, canopySize);

    //delays the draw function by 1/10 second.
    delay(100);

    //breaks the loop so that only one tree is drawn every 1/10 second
    break;
  }

  //Once i is equal to 60 and the while loop has stopped executing, displays the word the text centered in the x positon.
  if (i==60) {
    delay(1000);
    textAlign(CENTER, CENTER);
    textSize(20);
    fill(0);
    text("Tadah!", width/2, 100);
    text("A forest grew! I must be Johnny Appleseed or something!", width/2, 125);
  }
}

//float yPos =0;
//float yVelocity =1;
//float yAcc=0.02;
//float shiftX = random(800,800);
//float shiftY = random(800,800);

//void setup(){
//size(900,900);
//background(255);
//}

//void draw(){
//  yPos+=yVelocity;
//  yVelocity+=yAcc;
//fill(#36EDFC);
//stroke(0);
//ellipse(shiftX,yVelocity,10,25);
//}
