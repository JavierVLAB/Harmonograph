Harmonograph har;

void setup() {

  size(800, 800);

  har = new Harmonograph(width);
  println(millis());
  background(255);
  pushMatrix();
  translate(width/2, height/2);
  //har.drawCurveShape();
  har.drawPoints();
  popMatrix();

  println(millis());
}


void draw() {
}
