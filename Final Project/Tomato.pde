class Tomato {
  int size;
  PVector position;
  float rotation;
  float rotationSpeed;
  boolean isSpinning;
  float trailSpeed = 0.1f; // Adjust this value to control the trailing speed
  int trailingDelay = 10; // Adjust this value to control the trailing delay
  PVector trailingTarget;

  Tomato(int size, int startX, int startY) { // Changed 'sz' to 'size'
    this.size = size;
    position = new PVector(startX, startY);
    rotation = 0;
    rotationSpeed = 0.05f; // Adjust this value to control the spinning speed
    isSpinning = false;
    trailingTarget = new PVector(startX, startY);
  }

  void display() {
    fill(255, 99, 71); // Red colour
    pushMatrix();
    translate(position.x, position.y);
    rotation += rotationSpeed; // Increment rotation angle continuously
    rotate(rotation);
    ellipse(0, 0, size, size); // Tomato body
    fill(124, 176, 109); // Tomato stem colour
    ellipse(0, size / 2, size / 2, size / 2); // Tomato stem
    popMatrix();
  }

  void startSpin() {
    isSpinning = true;
  }

  void updatePosition(int bakerX, int bakerY, float bakerSpeed) {
    PVector target = new PVector(bakerX, bakerY + 50); // Positioning tomato behind the baker
    if (bakerSpeed > 0) {
      target.x -= trailingDelay; // Delay the target position if the baker is moving right
    } else {
      target.x += trailingDelay; // Delay the target position if the baker is moving left
    }
    trailingTarget.lerp(target, trailSpeed); // Smoothly move the tomato towards the target
    position = trailingTarget;
  }
}

// Updated event handling method to not use global event variables directly
void simulateMouseClick(int mouseX, int mouseY) {
  // Implement the method logic using mouseX and mouseY parameters
}
