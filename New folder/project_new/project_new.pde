PImage PlaneImg;

// Plane 
float planeX, planeY;
float planeSpeed = 5;

// variables
float[] bombX = new float[5];
float[] bombY = new float[5];
float[] bombSpeed = new float[5];

int score = 0;
boolean gameOver = false;

void setup() {
  size(600, 400); 
  PlaneImg =loadImage("OIP.png");
//  if(PlaneImg == null)
  //{
 //   println("error");
 // }
  //else {
   // println("succes");
   // PlaneImg.resize(50,50);
 // }
  PlaneImg.resize(50,50);
  planeX = width/2;
  planeY = height - 50;
  
  for (int i = 0; i < bombX.length; i++) {
    resetBomb(i);
  }
}

void draw() {
  if (!gameOver) {
    background(255);//135, 206, 235); 
    
    // Score
    fill(0);
    textSize(20);
    text("Score: " + score, 20, 30);

    // Plane 
    drawPlane();
    movePlane();

   
    for (int i = 0; i < bombX.length; i++) {
      fill(255, 255, 0); 
      ellipse(bombX[i], bombY[i], 20, 20);
      bombY[i] += bombSpeed[i];

     
      if (dist(planeX, planeY, bombX[i], bombY[i]) < 30) {
        gameOver = true;
      }

      
      if (bombY[i] > height) {
        resetBomb(i);
        score++; 
      }
    }
  } else {
    showGameOver();
  }
}

void drawPlane() {
  imageMode(CENTER);
  image(PlaneImg,planeX,planeY);
 
}

void movePlane() {
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      planeX -= planeSpeed;
    }
    if (key == 'd' || key == 'D') {
      planeX += planeSpeed;
    }
    if (key == 'w' || key == 'W') {
      planeY -= planeSpeed;
    }
    // Screen
    planeX = constrain(planeX, 20, width-20);
    planeY = constrain(planeY, 20, height-20);
  }
}

void resetBomb(int i) {
  bombX[i] = random(width);
  bombY[i] = random(-500, -50);
  bombSpeed[i] = random(3, 7);
}

void showGameOver() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("GAME OVER!", width/2, height/2);
  textSize(20);
  text("Final Score: " + score, width/2, height/2 + 40);
  text("Press 'R' to Restart", width/2, height/2 + 80);
  
  if (keyPressed && (key == 'r' || key == 'R')) {
    restartGame();
  }
}

void restartGame() {
  score = 0;
  gameOver = false;
  setup();
}
