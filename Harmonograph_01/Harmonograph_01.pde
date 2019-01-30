color bg_color;
int border = 70;

/* important things: */
int N = 4; /* number of oscillators */
Oscillator[] oscillatorx = new Oscillator[N/2];
Oscillator[] oscillatory = new Oscillator[N/2];

int runs = 0;
int points = 50000; /* points drawn per frame */
float t_max = 250, t_step = t_max/points;

void setup() {
  size(800, 800);
  smooth(1);
  frameRate(24);
  colorMode(RGB, 2, 2, 2);
  bg_color = color(0.2, 0.2, 0.2);
  
  int i;
  for (i = 0; i < N/2; i++) {
    oscillatorx[i] = new Oscillator(i, width/2 - border);
    oscillatory[i] = new Oscillator(i + N/2, height/2 - border);
  }
}

void draw() {
  PVector pos;
  float t;
  int i;
  
  background(bg_color);
  
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

void keyPressed(){
/* pauses drawing if the key 'p' is pressed */
  if (key == 'p') {
    if (looping) noLoop();
    else loop();    
  }
}
