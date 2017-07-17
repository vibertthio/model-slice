import peasy.*;

PeasyCam cam;

Model[] models;
int nOfM = 5;

// animation
float count = 0;
float phase = PI * 0.5;

void setup() {
  size(800, 500, P3D);
  cam = new PeasyCam(this, 200);
  cam.setMinimumDistance(100);
  cam.setMaximumDistance(300);
  cam.rotateX(PI);
  init();

}

void init() {
  float lowBound = -3.5;
  float highBound = 3.5;
  models = new Model[nOfM];
  for (int i = 0; i < nOfM; i++) {
    float low = map(i, 0, nOfM, lowBound, highBound);
    float high = map(i + 1, 0, nOfM, lowBound, highBound);
    models[i] = new Model("mount.blend1.obj");
    models[i].clipYLow(-0.2);
    models[i].clipXLow(low);
    models[i].clipXHigh(high);
    // models[i].translate(0, i * 10, 0);
  }
}

public void draw() {
  background(0);
  for (int i = 0; i < nOfM; i++) {
    Model m = models[i];
    m.translate(0, 20 * sin(count + phase * i), 0);
    m.render();
  }
  count += 0.05;
  lights();
}
