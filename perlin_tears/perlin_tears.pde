ArrayList<TearSystem> systems;
float x, y, test;

void setup() {
  size(600,400, P3D);
  //for (int i = 0; i < 10; i++) {
    
   
    
    systems = new ArrayList<TearSystem>();
    println(x);
    
   
    
  
  
}

void draw() {
  
      if (test % 25 == 0) {
     // float t1 = map(i, 10, 0, -1, 1);
      float t1 = int(random(-1, 1));
      
      systems.add(new TearSystem(t1, 0));
      println(systems.size() + "size");
      }
  
   x = random(-1, 1);
    y = random(-1, 1);
  test +=1;
  //println(test);
  lights();
  
  translate(width/2, height/2);
  background(255, 0, 0);
  for (TearSystem ts : systems) {
    ts.addTears();
    ts.run();
  }
  
  
  
  
}

void mousePressed() {
  
  systems.add(new TearSystem(x, y));
}
