class Baguette {
  static final int SEGMENT_SIZE = 10;
  static final float SPACING_FACTOR = 0.75f;
  static final float BREATH_SPEED = 0.1f;
  static final float BREATH_RANGE = 3.0f;
  static final float CONSTANT_SPAWN_Y_OFFSET = -90; // Offset above the baker's head

  int totalSegments = 8;
  int currentSegments = totalSegments;
  float xPos;
  float yPos;
  float width = SEGMENT_SIZE;
  float height = SEGMENT_SIZE * totalSegments;
  float spawnX;
  float spawnY;
  float offset;
  boolean floatUp = true;
  boolean isCollected = true;

  Baguette(float xPos, float yPos) {
    this.xPos = xPos;
    this.spawnY = yPos + CONSTANT_SPAWN_Y_OFFSET; // Fixed y position above baker's head
    this.offset = 0;
    this.spawnX = xPos;
  }

  void display(float armX, float armY) {
    if (isCollected) {
      displayCollectedBaguette(armX, armY);
    } else {
      displayUncollectedBaguette();
      updateOffset();
    }
  }

  void displayCollectedBaguette(float armX, float armY) {
    xPos = armX;
    yPos = armY - (currentSegments * 4) - ((height / totalSegments) * SPACING_FACTOR);

    for (int i = 0; i < currentSegments; i++) {
      float segmentYPos = yPos + (i * (height / totalSegments) * SPACING_FACTOR);

      fill(color(196, 164, 132));
      rect(xPos - width / 2, segmentYPos, width, width, 3);
      fill(color(231, 201, 169));
      arc(xPos + 5, (segmentYPos + width / 2) - 1, 8, 8, radians(120), radians(270));
    }
  }

  void displayUncollectedBaguette() {
    for (int i = 0; i < totalSegments; i++) {
      float segmentYPos = spawnY + offset - (currentSegments * 4) + (i * (height / totalSegments) * SPACING_FACTOR);

      fill(color(196, 164, 132));
      rect(spawnX - width / 2, segmentYPos, width, width, 3);
      fill(color(231, 201, 169));
      arc(spawnX + 5, (segmentYPos + width / 2) - 1, 8, 8, radians(120), radians(270));
    }
  }

  void updateOffset() {
    if (floatUp) {
      offset += BREATH_SPEED;
      if (offset >= BREATH_RANGE) {
        floatUp = false;
      }
    } else {
      offset -= BREATH_SPEED;
      if (offset <= -BREATH_RANGE) {
        floatUp = true;
      }
    }
  }

  void eat() {
    if (isCollected) {
      if (currentSegments > 0) {
        currentSegments--;
        if (currentSegments == 0) {
          resetSegments();
        }
      }
    }
  }

  void resetSegments() {
    currentSegments = totalSegments;
    isCollected = false;
    // spawnY remains constant, only spawnX is reset to a new random position within bounds
    spawnX = random(80 + width / 2, 300 - width / 2);
  }

  void collect() {
    isCollected = true;
  }
}
