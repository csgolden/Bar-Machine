import processing.video.*; //til at indsætte videoer som baggrund


PImage Forside; //start
PImage Menu; //Menu med drikke
PImage Kaffe; //kaffe info
PImage The;
PImage ÆbleJuice;
PImage AppelsinJuice;
PImage MetodeThe;
PImage MetodeKaffe;
PImage MetodeÆble;
PImage MetodeAppelsin;
PImage BetalingThe;
PImage BetalingKaffe;
PImage BetalingÆble;
PImage BetalingAppelsin;
Movie Skænk;
Movie movie;
Byte state = 0;
int idletime = 0;
Boolean Mixer = false;
int x, y;


void setup() {
  size(1280, 720);
  frameRate(60);
  movie = new Movie(this, "vand.mp4");
  Forside = loadImage("start.png");
  Menu = loadImage("Bar.jpg");

  Kaffe = loadImage("Kaffe.jpg");
  The = loadImage("The.jpg");
  ÆbleJuice = loadImage("Æblejuice.jpg");
  movie.loop();
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  idletime += 1;
  if (idletime>30*frameRate) {
    state = 0;
    idletime = 0;
  }
  if (state == 0) {
    image(movie, 0, 0, width, height);
    image(Forside, 320, 180);
    byte c = 0;
    for (int i = 0; i < 28; i ++) {
      c += 1;
      if (c==13) {
        c = 0;
      }
    }
  } else if (state == 1) {
    image(Menu, 0, 0);
  } else if (state == 2) {
    background(255);
    image(Kaffe, 0, 0);
  } else if (state == 3) {
    background(255);
    image(The, 0, 0);
    } else if (state == 4) {
      background(255);
    image(ÆbleJuice, 0, 0);
    } else if (state == 5) {
      background(255);
    image(Kaffe, 0, 0);
  } else {
  }
}

void mousePressed() {
  idletime = 0;
  if (Mixer) {
    return;
  }

  if (state==0&&mouseX>543&&mouseX<543+202&&mouseY>251&&mouseY<251+217) {
    state = 1;
  } else if (state==1&&mouseX>22&&mouseX<22+252&&mouseY>519&&mouseY<519+196) {
    state = 2;
  } else if (state==1&&mouseX>357&&mouseX<357+258&&mouseY>521&&mouseY<521+204) {
    state = 3;
  } else if (state==1&&mouseX>659&&mouseX<659+184&&mouseY>620&&mouseY<620+94) {
    state = 4;
  } else if (state==2&&mouseX>1050&&mouseX<1050+843&&mouseY>620&&mouseY<620+94) {
    state = 0;
  }
  if (mousePressed == true) {
    x = mouseX;
    y = mouseY;
    println("x is now: " + x + " y is now: " + y);
  }
}
