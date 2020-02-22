  float g = -9.8;
  float step = 0.01;
  float v0 = 0;
  float y0 = 300;
  float t0 = 0;
  FloatList y;
  FloatList t;
  FloatList v;
  float vs;
  float ys;
  float ts;
  int i;
  
void setup(){
  size(800, 800);
  y = new FloatList();
  t = new FloatList();
  v = new FloatList();
  y.append(y0);
  t.append(t0);
  v.append(v0);
}

void draw(){
  background(255);
  fill(0);
  vs = v.get(i) + (g * step);
  ys = y.get(i) + (vs * step);
  ts = ts + step;
  i = i+1;
  v.append(vs);
  y.append(ys);
  t.append(ts);
  textSize(16);
  text("y :"+ys, width-120, 20);
  text("v :"+vs, width-120, 40);
  text("t :"+ts, width-120, 60);
  println(vs, ys, ts);
  ellipse(width/2, height-ys, 30, 30);
  if (ys<=0){
     noLoop();
  }
  
}
