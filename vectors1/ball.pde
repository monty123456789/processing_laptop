class Ball {
  PVector location, acceleration, velocity, wind, desired, loc2, vel2, acc2, t2, noisP;
  float a, b, nois, nois2, c, c2, c3;
  
  Ball(float r, float r2) {
    
    location = new PVector(r, r2);
    
    float rand = noise(location.x); 
    loc2 = new PVector(0, 0);
    acceleration = new PVector();
    acc2 = new PVector();
    velocity = new PVector();
    wind = new PVector(rand, 0);
    desired = new PVector();
    vel2 = new PVector(1, 5);
   
   
    
    
    a = map(r, 0, 100, 0, 255); 
    b = map(r2, 0, 100, 0, 255);
    
  }
  
  void follow(PVector target) {
   
    t2 = new PVector(target.x, target.y);
    float dist = loc2.dist(t2);
  
    desired = t2.sub(loc2);
    //desired.div(20);
    //desired.mult(4);
    vel2.add(desired);
    vel2.div(10);
    //vel2 = desired.mult(4);
    //vel2.limit(10);
    loc2.add(vel2);
    
      c = map(dist, 0, width/2, -500, 500);
     c2 = map(dist, 0, width/2, 0, 255);
      c3 = map(dist, 0, width/4, 0, 255);
    
    //desired.mult(4);
    
    //desired.mult(5);
     //target = new PVector(target.x, target.y);
    //fill(c2, c2/2, 255-c);
    //stroke(255);
    //loc2.add(vel2); 
    //vel2 = difference between target and loc2
   
    //loc2.add(vel2);
    
    //desired.mult(3);
    //println(target);
    //println(loc2);
    //pushMatrix();
    noStroke();
    fill(255);
    
    //translate(loc2.x, loc2.y, dist);
    //sphere(10);
    //popMatrix(); 
    circle(loc2.x, loc2.y, 20);
    stroke(c3);
    //line(loc2.x, loc2.y, width/2, height/2);
  }
    
  
  void move() {
    float n = noise(location.x *.01)*.1;
    acceleration = new PVector(n,.05);
    velocity.add(acceleration);
    location.add(velocity);
    println(velocity);
    velocity.limit(5);
  }
  
  void display() {
    noStroke();
    fill(a, 0, 255-b);
    circle(location.x, location.y, 10);
    //pushMatrix();
    //translate(location.x, location.y);
    //sphere(5);
    //popMatrix(); 
  }
  
  void edges() {
    if (location.x >= width-10) {
      location.x = width-10;
      velocity.x *=-1;
    } else if (location.x <= 10) {
      location.x = 10;
      velocity.x *=-1;
    } else if (location.y >= height-10) {
      location.y = height-10;
      velocity.y *= -1;
    } else if (location.y <= 10) {
      location.y = 10;
      velocity.y *= -1;
    }
    
  }
}
