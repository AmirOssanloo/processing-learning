class Walker {
  float x;
  float y;

  Walker() {
    x = width / 2;
    y = height / 2;
  }

  void display() {
    stroke(0);
    point(x, y);
  }

  void step() {
    float stepX = random(-1, 1);
    float stepY = random(-1, 1);

    x += stepX;
    y += stepY;
  }
}

Walker walker;

void setup() {
  size(640, 360);
  background(255);

  walker = new Walker();
}

void draw() {
  walker.step();
  walker.display();
}
