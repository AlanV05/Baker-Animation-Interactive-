class Baker {
  // General movement attributes
  int xPos, yPos;
  float speed, eatSpeed;
  int moving;
  int groundLevel;

  // Jump attributes
  boolean jumping;
  int jumpSpeed;
  float gravity;
  
  // Arm attributes
  float armOffset, armBreathSpeed, armBreathRange;
  boolean armBreathUp;
  int armDistance;
  
  // Head attributes
  float headOffset;
  
  // Eating attributes
  boolean eating;
  float targetRightArmY, targetRightArmX, rightArmY, rightArmX;
  float leftEdgeX, rightEdgeX;

  // Constants for initialisation
  static final int INIT_GROUND_LEVEL = 215;
  static final float INIT_EAT_SPEED = 0.5f;
  static final int INIT_JUMP_SPEED = -15;
  static final float INIT_GRAVITY = 1.5f;
  static final float INIT_ARM_BREATH_SPEED = 0.05f;
  static final float INIT_ARM_BREATH_RANGE = 1.0f;
  static final int INIT_ARM_DISTANCE = 20;

  Baker(int x, int y, float s) {
    xPos = x;
    yPos = y;
    speed = s;
    eatSpeed = INIT_EAT_SPEED;
    moving = 0;
    groundLevel = INIT_GROUND_LEVEL;
    jumping = false;
    jumpSpeed = INIT_JUMP_SPEED;
    gravity = INIT_GRAVITY;
    armOffset = 0;
    armBreathSpeed = INIT_ARM_BREATH_SPEED;
    armBreathRange = INIT_ARM_BREATH_RANGE;
    armBreathUp = true;
    armDistance = INIT_ARM_DISTANCE;
    headOffset = 0;
    eating = false;
    rightArmY = yPos + 30;
    rightArmX = xPos - 40;

    updateCollisionEdges();
  }

  void drawCharacter() {
    noStroke();
    drawLegs();
    drawBody();
    drawArms();
    stroke(0);
    drawHead();
    noStroke();
    drawEyes();
    drawMoustache();
    drawHair();
  }

  void drawHead() {
    fill(255);
    ellipse(xPos, yPos + headOffset, 40, 40);
    rect(xPos - 20, yPos - 25 + headOffset, 40, 25);

    stroke(255);
    rectMode(CENTER);
    rect(xPos, yPos + headOffset, 38, 5);
    rectMode(CORNER);
  }

  void drawEyes() {
    fill(0);
    ellipse(xPos - 8, yPos - 2.5 + headOffset, 6, 6);
    ellipse(xPos + 8, yPos - 2.5 + headOffset, 6, 6);
  }

  void drawMoustache() {
    fill(color(128, 71, 28));
    ellipse(xPos, yPos + 8 + headOffset, 12, 12);
    fill(255);
    rect(xPos - 6, yPos + 8 + headOffset, 12, 12);
  }

  void drawHair() {
    fill(color(128, 71, 28));
    ellipse(xPos - 18, yPos - 25 + headOffset, 20, 20);
    ellipse(xPos - 12, yPos - 32 + headOffset, 18, 18);
    ellipse(xPos - 5, yPos - 20 + headOffset, 22, 22);
    ellipse(xPos + 3, yPos - 32 + headOffset, 18, 18);
    ellipse(xPos + 13, yPos - 28 + headOffset, 22, 22);
    ellipse(xPos + 20, yPos - 22 + headOffset, 18, 18);
  }

  void drawBody() {
    fill(color(60, 40, 13));
    rect(xPos - 15, yPos + 5, 30, 45);

    fill(color(211, 211, 211));
    rect(xPos - 10, yPos + 5, 20, 40, 10);

    fill(color(0xFFFFE4));
    rect(xPos - 7, yPos + 5, 14, 35, 6);
  }

  void drawArms() {
    float leftArmY = yPos + 30 + armOffset;
    if (!eating) {
      rightArmY = yPos + 30 + armOffset;
    }

    fill(255);
    ellipse(xPos - armDistance, leftArmY, 12, 12);
    ellipse(xPos + armDistance, rightArmY, 12, 12);
  }

  void drawLegs() {
    fill(0);
    ellipse(xPos - 8, yPos + 50, 13, 13);
    ellipse(xPos + 8, yPos + 50, 13, 13);
  }

  void moveLeft() {
    moving = -1;
    if (xPos - speed >= 80) {
      xPos -= speed;
    } else {
      xPos = 80;
    }
    updateCollisionEdges();
  }

  void moveRight() {
    moving = 1;
    if (xPos + speed <= width - 150) {
      xPos += speed;
    } else {
      xPos = width - 150;
    }
    updateCollisionEdges();
  }

  void moveStationary() {
    moving = 0;
  }

  void moveJump() {
    if (!jumping) {
      jumping = true;
      jumpSpeed = INIT_JUMP_SPEED;
    }
    updateCollisionEdges();
  }

  void updateCollisionEdges() {
    leftEdgeX = xPos - 20;
    rightEdgeX = xPos + 20;
  }

  void startEating() {
    eating = true;
    targetRightArmY = yPos + 20;
    targetRightArmX = xPos;
  }

  void updateJump() {
    if (jumping) {
      yPos += jumpSpeed;
      jumpSpeed += gravity;
      if (yPos >= groundLevel) {
        yPos = groundLevel;
        jumping = false;
      }
    }
  }

  void updateEating() {
    if (eating) {
      if (rightArmY > targetRightArmY || rightArmX > targetRightArmX) {
        if (rightArmY > targetRightArmY) {
          rightArmY -= eatSpeed;
        }
        if (rightArmX > targetRightArmX) {
          rightArmX -= eatSpeed;
        }
      } else {
        eating = false;
      }
    }
  }

  void move() {
    updateJump();
    updateEating();
    updateCollisionEdges();

    if (moving == -1) {
      if (xPos > 80) {
        xPos -= speed;
      }
    } else if (moving == 1) {
      if (xPos < width - 150) {
        xPos += speed;
      }
    }

    if (!eating) {
      updateBreathing();
    }
  }

  void updateBreathing() {
    if (armBreathUp) {
      armOffset += armBreathSpeed;
      headOffset += armBreathSpeed;
      if (armOffset >= armBreathRange) {
        armBreathUp = false;
      }
    } else {
      armOffset -= armBreathSpeed;
      headOffset -= armBreathSpeed;
      if (armOffset <= -armBreathRange) {
        armBreathUp = true;
      }
    }
  }
}
