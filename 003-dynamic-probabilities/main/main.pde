class Walker {
  float x;
  float y;

  Walker() {
    x = width / 2;
    y = height / 2;
  }

  void step() {
    float random = random(1);
    float stepX = random(-1, 1);
    float stepY = random(-1, 1);

    if (random >= 0.85) {
      if (x < mouseX) {
        x++;
      } else {
        x--;
      }

      if (y < mouseY) {
        y++;
      } else {
        y--;
      }
    } else {
      x += stepX;
      y += stepY;
    }
  }

  void display() {
    stroke(0);
    point(x, y);
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
