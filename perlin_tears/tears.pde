class TearSystem {
  ArrayList<Tear> tears;
  PVector direction;
  float ex, ey;
  float seed1, seed2;
  float det1, det2;
  
  TearSystem(float sub1, float sub2) {
    tears = new ArrayList<Tear>();
    det1 = sub1;
    det2 = sub2;
    
  }
  
  void addTears() {
      tears.add(new Tear(ex, ey, det1, det2));
  }
  
  void run() {
    for (int i = tears.size() -1; i >= 0; i--) {
      Tear t = tears.get(i);
      t.run();
      if (t.isDead()) {
        tears.remove(i);
      }
      
      seed1 += .0001;
      seed2 += .0002;
     
    //  t.acceleration.add(det1, det2);
      
      
    
    }
  }
  
}
