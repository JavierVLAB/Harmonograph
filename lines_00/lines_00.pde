ArrayList<Particle> particles = new ArrayList<Particle>();

void setup() {
  fullScreen();
  //size(600, 600);
  for (int i = 0; i < 10; i++) {
    particles.add(new Particle());
    background(255);
    smooth();
  }
}

void draw() {
  //background(255);

  for (Particle p : particles) {
    p.run();
    if (p.isDead()) {
      p.init();
    }
  }
}
