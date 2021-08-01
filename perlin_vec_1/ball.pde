class Ball {
  
  PVector acceleration, acceleration2, velocity, location, gravity;
  float x, seed;
  float c1, c2, co1, co2, co3;
  
  Ball(float a, float b, float c) {
    acceleration = new PVector();
    gravity = new PVector(.2, 0);
    acceleration2 = new PVector();
    velocity = new PVector();
    location = new PVector(a, b, c);
    seed = random(1000);
    c1 = a;
    c2 = b;
  }
  
  void move() {
    x+= .001;
    float n = noise(location.x * .01 + x) ;
    float n2 = noise(location.y * .005 + x) ;
    float n3 = noise(location.z * .007 + x);
    //println(n3);
    n = map(n, 0, 1, -.2, .2);
    n2 = map(n2, 0, 1, -.2, .2);
    n3 = map(n3, 0, 1, -.2, .2);
    
    co1 = map(n, 0, 1, 0, 255);
    co2 = map(n, 0, 1, 0, 255);
    co3 = map(n, 0, 1, 0, 255);


    //float n3 = noise(location.x * x) + x ;
    //float n4 = noise(location.y * x*100) + x ;
    //acceleration2 = new PVector(n3, n2);
    
    acceleration = new PVector(n2, n);
    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(.2);
    
  }
  
  void display() {
   
    circle(location.x, location.y, 5);
    
  }
  
  void stripes() {
    if (c1 % 3 == 0) {
      fill(co1, co2, co3);
    } else  {
      fill(255);
    }
    println(c1);
  }
  
  void display3d() {
  //  fill(255, 100);
      noStroke();
    pushMatrix();
    translate(location.x, location.y, location.z);
  
    sphere(4);
    popMatrix();
  }
  
  void edges() {
    if (location.x > width) {
      location.x = 0;
      //velocity.x *=-1;
    } else if (location.x < 0) {
      location.x = width;
     // velocity.x *=-1;
    } else if (location.y > height) {
      location.y = 0;
      //velocity.y *= -1;
    } else if (location.y < 0) {
      location.y = height;
     // velocity.y *= -1;
    }
    
  }
  
  void edgesBounce() {
    if (location.x > width) {
      location.x = 0;
      velocity.x *=-1;
    } else if (location.x < 0) {
      location.x = width;
      velocity.x *=-1;
    } else if (location.y > height) {
      location.y = 0;
      velocity.y *= -1;
    } else if (location.y < 0) {
      location.y = height;
      velocity.y *= -1;
    } else if (location.z > width) {
      location.z = width; 
      location.z *= -1;
    } else if (location.z < 0) {
      location.z = 0;
      location.z *= -1;
    }
    
  }
  
}
