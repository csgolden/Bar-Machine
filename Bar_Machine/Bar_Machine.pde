import processing.video.*;

Movie movie;

void setup() {
  size(1280, 720);
  background(0);

  movie = new Movie(this, " ");
  movie.loop();
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  image(movie, 0, 0, width, height);
}
void start() {
}
