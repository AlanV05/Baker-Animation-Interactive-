// Swirling Baker Tomato Animation

PImage kitchen;


//baker variables
int bakerXPos = 100; //baker X pos
int bakerYPos = 215; //baker Y pos
float bakerSpeed = 3.5; //speed that the baker moves

//boundary variables
int rightCounterX = 312;

void setup() {
  size (450, 300);
  background(85);
  kitchen = loadImage("kitchen.jpg");
  //https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.123rf.com%2Fphoto_202129181_bakery-shop-counter-with-bread-and-buns-vector-illustration-graphic-design.html%3Fvti%3Dnbmnmj08kwq0q74t1s-1-1%26is_plus%3D1&psig=AOvVaw15WzULqWEWYMBc2Ws1xwQZ&ust=1711682664917000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCPiS0_6AloUDFQAAAAAdAAAAABAE
}


void draw() {
  //insert kitchen
  image(kitchen, 0, 0);


  //draw the baker
  swirlingBaker(bakerXPos, bakerYPos); //use these variables to adjust the location of the baker


  //load boundaries
  noFill();
  noStroke();
  rect(312, 180, 90, 100);
  rect(15, 220, 48, 60);
}



void swirlingBaker(int x, int y) {
  //swirling animation
  loadBaker(x, y);
}









void loadBaker(int x, int y) {
  //centre of baker's coordinates is the head e.g. if head moves up, the body movbes up
  noStroke();

  bakerHitbox(x-21, y-35); //USE THIS FOR COLLISION DETECTION

  legs(x, y+50);
  body(x-15, y+5);
  head(x, y);
  arms(x, y+30);
  baguette(x+17, y+30);
}

void bakerHitbox(int x, int y) { //invisible rectangle used for collision detection
  noFill();
  noStroke();
  rect(x, y, 42, 90);
}

void head(int x, int y) { //draws the head, using the centre of the head as a reference and base for coordinates
  //head
  fill(255);
  ellipse(x, y, 40, 40);
  rect(x-20, y-25, 40, 25);

  //eyes
  fill(0);
  ellipse(x-8, y-2.5, 6, 6);
  ellipse(x+8, y-2.5, 6, 6);

  //moustache
  fill(#80471c);
  ellipse(x, y+8, 12, 12);
  fill(255);
  rect(x-6, y+8, 12, 12);

  //hair
  fill(#80471c);
  ellipse(x-18, y-25, 20, 20);
  ellipse(x-12, y-32, 18, 18);
  ellipse(x-5, y-20, 22, 22);
  ellipse(x+3, y-32, 18, 18);
  ellipse(x+13, y-28, 22, 22);
  ellipse(x+20, y-22, 18, 18);
}

void body(int x, int y) {
  //body
  fill(#3c280d);
  rect(x, y, 30, 45);

  //apron
  fill(#d3d3d3);
  rect(x+5, y, 20, 40, 10);
  fill(#FAF9F6);
  rect(x+8, y, 14, 35, 6);
}

void arms(int x, int y) {
  fill(255);
  ellipse(x-17, y, 12, 12); //left
  ellipse(x+17, y, 12, 12); //right
}

void legs(int x, int y) {
  fill(0);
  ellipse(x-8, y, 13, 13); //left
  ellipse(x+8, y, 13, 13); //right
}

void baguette(int x, int y) { //centre reference point is right hand
  //bread
  fill(#C4A484);
  rect(x+5, y-25, 10, 50, 100);
  fill(#e7c9a9);
  //half circle
  arc(x+5, y-18, 10, 10, -PI/2, PI/2);
  arc(x+5, y-6, 10, 10, -PI/2, PI/2);
  arc(x+5, y+6, 10, 10, -PI/2, PI/2);
  arc(x+5, y+18, 10, 10, -PI/2, PI/2);
}
