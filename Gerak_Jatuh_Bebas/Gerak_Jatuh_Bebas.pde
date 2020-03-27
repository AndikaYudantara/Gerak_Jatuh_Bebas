float g;
float step;
float v0;
float x0;
float y0;
float t0;
FloatList y;
FloatList t;
FloatList v;
float vnext;
float ynext;
float tnext;
int i;

void setup() {
  size(400, 400);
  g = -9.8;
  step = 0.01;
  v0 = 0;
  x0 = width/2;
  y0 = 100;
  t0 = 0;
  y = new FloatList();
  t = new FloatList();
  v = new FloatList();
  y.append(y0);
  t.append(t0);
  v.append(v0);
}

void draw() {
  background(255);
  fill(0);
  vnext = v.get(i) + (g * step);
  ynext = y.get(i) + (vnext * step);
  tnext = t.get(i) + step;

  v.append(vnext);
  y.append(ynext);
  t.append(tnext);

  textSize(16);
  text("y :"+ynext, width-120, 20);
  text("v :"+vnext, width-120, 40);
  text("t :"+tnext, width-120, 60);
  
  noStroke();
  fill(100, 100, 255);
  ellipse(x0, height-ynext, 10, 10);
  
  i++;

  if (ynext<=0) {
    noLoop();
  }
}
