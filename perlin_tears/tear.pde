class Tear {
  
  PVector position, velocity, acceleration;
  float lifespan;
  float ax, ay;
  float aa, ab;
   
  Tear(float x, float y, float a, float b) {

    //a = map(a, 0, 1, -1, 1);
   // b = map(b, 0, 1, -1, 1);
    aa = a;
    ab = b;
    velocity = new PVector();
    position = new PVector(0, 0);
    lifespan = 255;
  }
  
  void run() {
    update();
    display();
  }
  
  void update() {
    acceleration = new PVector(ax + aa, ay + ab );
    velocity.add(acceleration);
    position.add(velocity);
    velocity.mult(0);
    lifespan -=1;
    
    ax = noise(position.x * .01);
    ay = noise(position.y * .05 );
    
    //ax = map(ax, 0, 1, -1, 1);
    //ay = map(ay, 0, 1, -1, 1);
  }
  
  void display() {
    noStroke();
    fill(lifespan);
    circle(position.x, position.y, 10);
    
    //pushMatrix();
    //translate(position.x, position.y, position.z);
    //sphere(5);
    //popMatrix();
    
  }
  
  boolean isDead() {
    if (lifespan < 1) {
      return true;
    } else {
      return false;
    }
  }
  
}
