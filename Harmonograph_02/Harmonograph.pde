/*class Harmonograph {

  PVector pos;
  float t;
  int i;
  int t_max;
  int t_step;
  int runs;
  int N;
  Oscillator[] oscillatorx;
  Oscillator[] oscillatory;

  Harmonograph() {

    oscillatorx = new Oscillator[N/2];
    oscillatory = new Oscillator[N/2];

    for (int i = 0; i < N/2; i++) {
      oscillatorx[i] = new Oscillator(i, width/2 - border);
      oscillatory[i] = new Oscillator(i + N/2, height/2 - border);
    }

    for (t = 0; t < t_max; t += t_step) {
      pos = new PVector(0, 0);
      for (i = 0; i < N/2; i++) {
        pos.x += oscillatorx[i].position(t);
        pos.y += oscillatory[i].position(t);
      }

      pushMatrix();
      translate(width/2, height/2);
      //strokeWeight(2 + int(5*t/t_max));
      stroke(sin(0.006*runs + PI/2) + 1, sin(0.012*runs + PI) + 1, sin(0.003*runs) + 1);
      point(pos.x, pos.y);
      popMatrix();
    }

    for (i = 0; i < N/2; i++) {
      oscillatorx[i].change(i);
      oscillatory[i].change(i + N/2);
    }

    runs++;
  }
  
  
  void draw(){
    
    
  }
  
}
*/
