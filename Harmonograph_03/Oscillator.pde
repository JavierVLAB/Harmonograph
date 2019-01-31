class Oscillator {
  
  float[] par;
  
  Oscillator(int L) {
  
    par = new float[4];

    par[0] = L;
    par[1] = 1 + 0.0005*random(100);
    par[2] = 1 + 0.005*random(100);
    par[3] = 0.003;
    
  }
  
  void init () {
    par[1] = 1 + 0.005*random(100);
    par[2] = 1 + 0.005*random(100);
    par[3] = 0.003;

  }
  
  float position(float t) {

    float pos;
    
    pos =  par[0] * sin( par[1]*t + par[2])*exp(-par[3]*t);
    return pos;
  }

}
