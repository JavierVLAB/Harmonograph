/**
 * ControlP5 Slider set value
 * changes the value of a slider on keyPressed
 *
 * by Andreas Schlegel, 2012
 * www.sojamo.de/libraries/controlP5
 *
 */

import controlP5.*;


ControlP5 cp5;

int myColorBackground = color(0, 0, 0);

int sliderValue = 100;

void setupControlP5() {

  cp5 = new ControlP5(this);

  int alto = 20;
  int ancho = 100;
  int sep1 = 5;
  int sep2 = 200;


  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {

      cp5.addSlider("w" + i*4 + j)
        .setRange(-100, 100)
        .setValue(120)
        .setPosition(100, (alto + sep1)*j + 100 + sep2*i)
        .setSize(100, 10)
        .setId(i*4 + j);
    }
  }
}


void controlEvent(ControlEvent theEvent) {
  int i = theEvent.getController().getId();

  switch(theEvent.getController().getId()) {
    case(0):
    o1.par[0] = L/4 * theEvent.getValue()/100;
    break;
    case(1):
    o1.par[1] =  1 + 0.0005*theEvent.getValue();
    break;
    case(2):
    o1.par[2] = 4*theEvent.getValue()/100;
    break;
    case(3):
    o1.par[3] = 0.003*theEvent.getValue();
    break;
    case(4):
    o2.par[0] = L/4 * theEvent.getValue()/100;
    break;
    case(5):
    o2.par[1] = 1 + 0.0005*theEvent.getValue();
    break;
    case(6):
    o2.par[2] = 4*theEvent.getValue()/100;
    break;
    case(7):
    o2.par[3] = 0.003*theEvent.getValue();
    break;
    case(8):
    o3.par[0] = L/4 * theEvent.getValue()/100;
    break;
    case(9):
    o3.par[1] =  1 + 0.0005*theEvent.getValue();
    break;    
    case(10):
    o3.par[2] = 4*theEvent.getValue()/100;
    break;    
    case(11):
    o3.par[3] = 0.003*theEvent.getValue();
    break;
    case(12):
    o4.par[0] = L/4 * theEvent.getValue()/100;
    break;
    case(13):
    o4.par[1] = 1 + 0.0005*theEvent.getValue();
    break;
    case(14):
    o4.par[2] = 4*theEvent.getValue()/100;
    break;
    case(15):
    o4.par[3] = 0.003*theEvent.getValue();
    break;
  }
}

void keyPressed() {
  cp5.getController("omega").setValue(150);
}
