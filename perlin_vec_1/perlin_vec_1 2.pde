ArrayList<Ball> b;
ArrayList<Ball>b2;
int test;
int a1, a2;

void setup() {
  size(600,400, P3D);
  b = new ArrayList<Ball>();
  for(int i = 0; i< width; i+=15 ) {
    for(int j = 0; j < height; j+= 15) {
      for (int k = 0; k < width; k+=30) { 
       b.add(new Ball(i, j, k));
       //b2.add(new Ball(j, ));
    
      }
    }
  }
}

void draw() {
  //camera(mouseX, mouseY, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  //spotLight(51, 102, 126, 80, 20, 40, -1, 0, 0, PI/2, 2);
  //lights();
  scale(.5);
  translate(width/2, height/2);
   spotLight(255, 215, 0, 0, 100, 570, 50, 0, 10, PI, .7);
  test+=1;
  println(test);
  background(165, 99/4, 170);
  for( int i = b.size()-1; i> 0; i--) {
    Ball be = b.get(i);
    be.move();
    be.display3d();
    be.edges();
    //be.stripes();
    
  }
  saveFrame("perlin_waves1_######.jpg");
}
