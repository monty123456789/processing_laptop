ArrayList<Ball> b;
int test;
PVector mouse;

float col1;
void setup() {
  size(400,400);
  background(0);
  
  
  b = new ArrayList<Ball>();
   for (int i = 0; i < 10; i+=1) {
     //for (int j = 0; j< 500; j+=10) {
       float a = random(0, 100);
       float a2 = random(0, 100);
     b.add(new Ball(a, a2));
     
   }
   
   
  
}

void draw() {
  
  //camera(width, height, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  //translate(width/2 -100, height/2-100);
  
//spotLight(0, col1, col1, width/2, height/2, 400, 0, 0, -1, PI, 1);
mouse = new PVector(mouseX, mouseY);
  test+=1;
  background(0);
  for (int i = b.size()-1; i > 0; i--) {
    Ball be = b.get(i);
    col1 = be.c2;
    be.move();
    be.display();
    be.edges(); 
    be.follow(mouse);
    
  }
  //saveFrame("vector1_######.png");
  
   
}
