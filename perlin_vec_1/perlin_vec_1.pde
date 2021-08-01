ArrayList<Ball> b;
ArrayList<Ball>b2;
int test;
int a1, a2;
int z = 600;

void setup() {
  size(800,600, P3D);
  b = new ArrayList<Ball>();
  for(int i = 0; i< width; i+=40 ) {
    for(int j = 0; j < height; j+= 40) {
      for (int k = 0; k < width; k+=8) { 
       b.add(new Ball(i, j, k));
       //b2.add(new Ball(j, ));
    
      }
    }
  }
}

void draw() {
  println(z + "  z");
  if (z < -600) {
    z = -600;
  } else {
    z -= 1;
  }
  //camera(mouseX, mouseY, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  //spotLight(51, 102, 126, 80, 20, 40, -1, 0, 0, PI/2, 2);
  //lights();
  scale(.5);
  translate(width/2, height/2, z);
  // lightSpecular(1, 1, 1);
   spotLight(255, 215, 0, -300, 100, 1000, 50, 0, 10, PI, .7);
   spotLight(255/2, 215/2, 0, -300, 100, 1000, 50, 0, 10, PI, .7);
  test+=1;
  println(test + "  frame");
  background(255/2, 0, 215/2);
  for( int i = b.size()-1; i> 0; i--) {
    Ball be = b.get(i);
    be.move();
    be.display3d();
    be.edges();
    //be.stripes();
    
  }
  saveFrame("perlin_waves1_######.jpg");
}
