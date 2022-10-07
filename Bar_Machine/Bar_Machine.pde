import processing.video.*;

Movie movie;
PImage img;
int bX = 150, bY = 150;
int x, y;

void setup() {
  size(1280, 720);
  background(255);

  movie = new Movie(this, "vand.mp4");
  img = loadImage("start.png");


  movie.loop();
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  image(movie, 0, 0, width, height);
  image(img, 320, 180);
  
    if (state == 0) {
    image(Forside, 0, 0);
    byte c = 0;
  for (int i = 0; i < 28; i ++) {
    c += 1;
    if(c==13){
    c = 0;
    }
    
  }
  } else if (state == 1) {
    image(Vælgdrink, 0, 0);
  } else if (state == 2) {
    image(information, 0, 0);
  } else {
  }
}
void start() {
}

void mouseClicked(){
  if( mouseX > bX && mouseX < (bX + img.width) &&
      mouseY > bY && mouseY < (bY + img.height)){
        
      };
    }
    
void mousePressed() {
  if (state==0&&mouseX>541&&mouseX<541+249&&mouseY>247&&mouseY<247+78) {
    state = 1;
  } else if (state==1&&mouseX>417&&mouseX<417+228&&mouseY>625&&mouseY<625+96) {
    state = 0;
  } else if (state==1&&mouseX>708&&mouseX<708+228&&mouseY>625&&mouseY<625+96) {
    state = 2;
  } else if (state==2&&mouseX>884&&mouseX<884+140&&mouseY>599&&mouseY<599+77) {
    state = 1;
  } else if (state==2&&mouseX>1050&&mouseX<1050+140&&mouseY>599&&mouseY<599+77&&!hælder) {
    hælder = true;
    
  if (mousePressed == true) {
    x = mouseX;
    y = mouseY;
    println("x is now: " + x + " y is now: " + y);
  }
}
