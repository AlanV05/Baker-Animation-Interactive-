PImage kitchen;
Baker baker;
Tomato tomato;
Baguette baguette;

void setup() {
  size(450, 300);
  kitchen = loadImage("kitchen.jpg");
  initializeCharacters();
}

void draw() {
  background(85);
  drawBackground();
  drawCharacters();
  updateCharacters();
}

void initializeCharacters() {
  baker = new Baker(100, 215, 4.0);
  tomato = new Tomato(20, baker.xPos, baker.yPos - 80);
  baguette = new Baguette(baker.armDistance, baker.rightArmY);
}

void drawBackground() {
  image(kitchen, 0, 0);
}

void drawCharacters() {
  baker.drawCharacter();
  tomato.display();
  baguette.display(baker.xPos + baker.armDistance + 5, baker.rightArmY);
}

void updateCharacters() {
  baker.move();
  tomato.updatePosition(baker.xPos, baker.yPos, baker.speed);
  checkCollisionWithBaker(baguette);
}

void keyPressed() {
  switch (keyCode) {
    case LEFT:
      baker.moveLeft();
      break;
    case RIGHT:
      baker.moveRight();
      break;
    case UP:
      baker.moveJump();
      break;
  }

  if (key == ' ') {
    if (baguette.isCollected) {
      baker.startEating();
      baguette.eat();
    }
  }
}

void keyReleased() {
  if (keyCode == LEFT || keyCode == RIGHT) {
    baker.moveStationary();
  }
}

void checkCollisionWithBaker(Baguette baguette) {
  if (baguette.spawnX > baker.leftEdgeX && baguette.spawnX < baker.rightEdgeX) {
    if (baguette.spawnY <= baker.yPos + 10 && baguette.spawnY >= baker.yPos - 10) {
      baguette.collect();
    }
  }
}
