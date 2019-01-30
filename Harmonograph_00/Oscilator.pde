class Oscillator {
  float w; /* angular frequency */
  int a;   /* amplitude */
  float p; /* phase */
  float d; /* damping constant */
  
  Oscillator(int i, int L) {
    w = 1 + 0.0005*i;
    a = L/(N/2); /* do not change */
    p = 1 + 0.005*i;
    d = 0.003;
  }
  
  float position(float t) {
  /* position of the oscillator */
    float pos;
    
    pos = int(a*sin(w*t + p)*exp(-d*t));
    return pos;
  }
  
  void change(int i) {
  /* quite random parameters */
    w += 0.000030*i*i*cos(0.006*runs);//*cos(0.02*runs);
    a += 0; /* does not change */
    p -= 0.0030*i*i*i*cos(0.006*runs);
    d += 0;
  }
}
