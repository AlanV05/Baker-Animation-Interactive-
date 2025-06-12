int tomatoSize = 100; // Size of the tomato
float rotation = 0; // Current rotation angle
float rotationSpeed = 1.0; // Speed of rotation in degrees per frame
boolean isSpinning = false;
int spinDuration = 360; // 3 seconds at 60 frames per second

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  
  // Draw tomato
  fill(255, 99, 71); // Red color
  pushMatrix(); // Save the current transformation matrix
  translate(width/2, height/2); // Move origin to center
  rotate(radians(rotation)); // Apply rotation
  ellipse(0, 0, tomatoSize, tomatoSize); // Tomato body
  fill(124,176,109);
  ellipse(0, -tomatoSize/2, tomatoSize/2, tomatoSize/2); // Tomato top
  popMatrix(); // Restore the saved transformation matrix
  
  if (isSpinning) {
    rotation += rotationSpeed; // Increase rotation angle
    spinDuration--;
    if (spinDuration <= 0) {
      isSpinning = false;
      spinDuration = 360; // Reset spin duration
    }
  }
}

// Check if the mouse click is within the bounds of the red tomato and if it's not already spinning
// If the conditions are met, set isSpinning flag to true to start spinning the tomato; otherwise, set it to false
void mouseClicked() {
  if (!isSpinning && dist(mouseX, mouseY, width/2, height/2) < tomatoSize/2) {
    isSpinning = true;
  } else {
    isSpinning = false;
  }
}
