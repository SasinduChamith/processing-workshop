PImage planeImg;
PImage skyImg;

float planeX, planeY;
float planeSpeed = 7; 

float[] bombX = new float[10];
float[] bombY = new float[10];
float[] bombSpeed = new float[10];

int score = 0;
boolean gameOver = false;

void setup() {
  size(650, 500);
  planeImg = loadImage("OIP.png");
  planeImg.resize(50, 50);
  
  skyImg = loadImage("sky.png");
  skyImg.resize(width, height);
  
  initGame(); // ගේම් එක මුලින්ම සකස් කිරීමට
}

void initGame() {
  planeX = width/2;
  planeY = height - 70;
  score = 0;
  gameOver = false;
  
  for (int i = 0; i < bombX.length; i++) {
    resetBomb(i);
  }
}

void draw() {
  if (!gameOver) {
    background(skyImg);
    
    // Score පෙන්වීම
    fill(0);
    textSize(22);
    textAlign(LEFT);
    text("Score: " + score, 20, 35);

    drawPlane();
    movePlane();
    handleBombs();
    
  } else {
    showGameOver();
  }
}

void drawPlane() {
  imageMode(CENTER);
  image(planeImg, planeX, planeY);
}

void movePlane() {
  if (keyPressed) {
    if (key == 'a' || key == 'A') planeX -= planeSpeed;
    if (key == 'd' || key == 'D') planeX += planeSpeed;
    if (key == 'w' || key == 'W') planeY -= planeSpeed;
    if (key == 's' || key == 'S') planeY += planeSpeed; // 'S' යතුරත් එක් කළා
  }
  // Screen සීමාවන් (මෙය නිතරම ක්‍රියාත්මක විය යුතුයි)
  planeX = constrain(planeX, 25, width-25);
  planeY = constrain(planeY, 25, height-25);
}

void handleBombs() {
  for (int i = 0; i < bombX.length; i++) {
    fill(0); 
    ellipse(bombX[i], bombY[i], 25, 25);
    bombY[i] += bombSpeed[i];

    // ගැටීම පරීක්ෂා කිරීම
    if (dist(planeX, planeY, bombX[i], bombY[i]) < 35) {
      gameOver = true;
    }

    // බෝම්බය පහළට ගියහොත් නැවත මුලට
    if (bombY[i] > height) {
      resetBomb(i);
      score++; 
    }
  }
}

void resetBomb(int i) {
  bombX[i] = random(20, width-20);
  bombY[i] = random(-600, -50);
  bombSpeed[i] = random(5, 9); // වේගය විවිධ අගයන් ගත්තොත් වඩාත් හොඳයි
}

void showGameOver() {
  background(0, 150); // අඳුරු පසුබිමක්
  fill(255);
  textAlign(CENTER);
  textSize(45);
  text("GAME OVER!", width/2, height/2 - 20);
  
  textSize(25);
  text("Final Score: " + score, width/2, height/2 + 30);
  fill(255, 255, 0); // කහ පැහැයෙන් Restart පණිවිඩය
  text("Press 'R' to Restart", width/2, height/2 + 80);
  
  if (keyPressed && (key == 'r' || key == 'R')) {
    initGame();
  }
}
