int[] randomCounts;

void setup() {
  size(640, 360);

  randomCounts = new int[20];
}

void draw() {
  background(255);

  int index = int(random(randomCounts.length));
  randomCounts[index]++;

  stroke(0);
  fill(175);

  int rectWidth = width / randomCounts.length;

  for (int i = 0; i < randomCounts.length; i++) {
    rect(i * rectWidth, height - randomCounts[i], rectWidth - 1, randomCounts[i]);
  }
}
