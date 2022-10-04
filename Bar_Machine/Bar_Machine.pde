import processing.video.*;

Movie movie;
PImage img;

void setup() {
  size(1280, 720);
  background(255);

  img = loadImage("start.png");

  movie = new Movie(this, " ");
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
