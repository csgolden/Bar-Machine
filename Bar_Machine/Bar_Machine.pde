import processing.video.*;

Movie movie;
PImage img;

void setup() {
  size(1280, 720);
  background(0);

  img = loadImage(" ");

  movie = new Movie(this, " ");
  movie.loop();
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  image(movie, 0, 0, width, height);
  image(img, 0, 0);
}
void start() {
}
