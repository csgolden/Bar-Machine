import processing.video.*;

Movie movie;
PImage img;

void setup() {
  size(1280, 720);
  background(255);

  movie = new Movie(this, "");
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
