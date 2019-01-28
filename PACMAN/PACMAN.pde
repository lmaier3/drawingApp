//empty image datatype
PImage fry;
PImage ww;
PImage logo;

float angle;
float jitter;

float xPos;
float yPos;

float xSpeed;
float ySpeed;

float counter;
void setup() {
  size(displayWidth, displayHeight);
  counter = 0;
  //loading the image into PImage
  fry=loadImage("fry.png");
  logo=loadImage("logo.png");
  ww=loadImage("ww.png");
  background(255);
  noStroke();
  fill(255);
  imageMode(CENTER);

  
  xPos=random(ww.width/2, width-ww.width);
  yPos=random(ww.height/2, height-ww.height/2);

 
  xSpeed=5;
  ySpeed=5;

  for (int i=0; i<100; i++) {
    image(fry, random(width), random(height), 80, 80);
  }
}



void draw() {
  counter++;
  text("FOR SLOW-MO PACMAN, MOVE UP AND DOWN :)", displayWidth/2, 20);

  image(logo, displayWidth/2, displayHeight/2, logo.width, mouseY);


  //push  pop matrix create a new "laeyer" with a new 0,0 point(translate)
  pushMatrix();
  translate(xPos, yPos);
  xPos=xPos+xSpeed;
  yPos=yPos+ySpeed;
  rotate(radians(counter));
  image(ww, 0, 0);
  //image(ww, xPos, yPos);
  popMatrix();

  if (xPos<=ww.width/2||xPos>=width-ww.width/2) {
    xSpeed=-xSpeed;
  }
  if (yPos<=ww.height/2||yPos>=height-ww.height/2) {
    ySpeed=-ySpeed;
  }


  if (mouseX>width/2) {
    strokeWeight(15);
    stroke(33, 252, 31);
    fill(5, 3, 3);
  } else {
    fill(137, 14, 14 );
    stroke(250);
    strokeWeight(15);
  }
}
void keyPressed() {
  if (key=='s'||key=='s') {
    //saves image of sketch
    saveFrame("PACMANsDINNER.png");
  }
}
