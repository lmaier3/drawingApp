PImage greens;
PImage moo;

float xPos;
float yPos;

float xSpeed;
float ySpeed;

boolean grassBrush=false;
boolean paint=false;


void setup() {
  size(displayWidth,displayHeight);
  greens=loadImage("greens.png");
  moo=loadImage("moo.png");

  background(21, 232, 43);
  imageMode(CENTER);
  xPos=random(greens.width/2, width-greens.width);
  yPos=random(greens.height/2, height-greens.height/2);

xSpeed=5;
ySpeed=5;


  }


void draw() {
  text("MOO",10,20);
  xPos=xPos+xSpeed;
  yPos=yPos+ySpeed;
  image(moo,displayWidth/2,displayHeight/6,mouseX,moo.height);
  image(greens,xPos,yPos,greens.width/3,greens.height/3);
  if (xPos<=greens.width/2||xPos>=width-greens.width/2){
    xSpeed=-xSpeed;
  }
  if(yPos<=greens.height/2||yPos>=height-greens.height/2){
    ySpeed=-ySpeed;
  }
  
  if (paint==true){
    paint();
  }
}  
  
  
  void keyPressed(){
    if (key=='s'||key=='s'){
      saveFrame("moochias.png");
    }
    if(key=='f'){
      grassBrush=true;
      paint=false;
    }
    if(key=='g'){
      grassBrush=false;
      paint=true;
    }
  }

  void paint(){
    noStroke();
    fill(32,116,41);
for(int i=0;i<20;i++){
ellipse(random(mouseX-30,mouseX+30),random(mouseY-30,mouseY+30),5,5);
}
}
  
  
  
  
