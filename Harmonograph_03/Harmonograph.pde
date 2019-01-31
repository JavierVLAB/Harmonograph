class Harmonograph {

  PVector pos;
  float t;
  int i;
  float t_max;
  float t_step;
  int runs;
  int N;
  int borde;
  int L;
  int points = 10000;
  Oscillator[] osc;

  Harmonograph(int ancho) {
    t = 0;
    t_max = 500;
    t_step = t_max/points;
    N = 4;
    borde = 20;
    L = (ancho - borde)/2;
    osc = new Oscillator[4];

    for (int i = 0; i < N; i++) {
      osc[i] = new Oscillator(L/N);
    }
  }

  void drawCurveShape() {
    noFill();
    stroke(0, 200);
    beginShape();



    for (t = 0; t < t_max; t += t_step) {
      pos = new PVector(0, 0);
      for (i = 0; i < N/2; i++) {
        pos.x += osc[i].position(t);
        pos.y += osc[i + N/2].position(t);
      }

      curveVertex(pos.x, pos.y);
    }

    endShape(OPEN);
  }

  void drawPoints() {
    noFill();
    stroke(0, 200);

    PVector pos0 = new PVector(0, 0);
    for (t = 0; t < t_max; t += random(2*t_step)) {
      pos = new PVector(0, 0);
      for (i = 0; i < N/2; i++) {
        pos.x += osc[i].position(t);
        pos.y += osc[i + N/2].position(t);
      }

      if (dist(pos0.x, pos0.y, pos.x, pos.y) > 0.01) {
        pos0.x = pos.x;
        pos0.y = pos.y;
        point(pos0.x, pos0.y);
      }
    }
  }
}
