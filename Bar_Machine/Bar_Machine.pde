import processing.video.*;

Movie movie;
PImage img;
int bX = 150, bY = 150;


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
}
void start() {
}

void mouseClicked(){
  if( mouseX > bX && mouseX < (bX + img.width) &&
      mouseY > bY && mouseY < (bY + img.height)){
        
      };
    }
