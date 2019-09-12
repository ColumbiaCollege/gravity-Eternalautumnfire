//Forest sketch
//Jeremiah Wilson 10 Sept 2019
//Sets global variable i equal to 0
int i = 0;  
void setup() {
  //Window size with background set to "sky blue"
  size (1200, 900);
  background (#A9F1FA);
  fill(#64491F);
  //Rectangle used for ground layer
  rect(0, 500, 1200, 500);
}


void draw() {

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
