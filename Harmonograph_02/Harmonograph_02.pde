int ancho;
int borde;
int L;

Oscillator o1;
Oscillator o2;
Oscillator o3;
Oscillator o4;

PVector pos = new PVector(0, 0);
PVector pos0 = new PVector(0, 0);

boolean update = true;

void setup() {

  size(1000, 1000);
  ancho = width;
  borde = 20;
  L = ancho - borde;

  o1 = new Oscillator(L);
  o2 = new Oscillator(L);
  o3 = new Oscillator(L);
  o4 = new Oscillator(L);

  setupControlP5();


  smooth();
}


void draw() {

  if (update) {
    background(255);

    int points = 50000; /* points drawn per frame */
    float t_max = 2500, t_step = t_max/points;
    float t;
    stroke(0);

    // o1.init();
    // o2.init();
    //o3.init();
    // o4.init();

    for (t = 0; t < t_max; t += t_step) {


      pos.x += o1.position(t) + o3.position(t);
      pos.y += o2.position(t) + o4.position(t);

      pushMatrix();
      translate(width/2, height/2);

      point(pos.x, pos.y);
      popMatrix();
    }
    update= false;
  }
}


void mouseReleased() {
  update = true;
}
