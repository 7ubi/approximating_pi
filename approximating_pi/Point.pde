class Point{
  float x;
  float y;
  boolean inCircle;
  
  Point(float x, float y, PVector center, float r){
    this.x = x;
    this.y = y;
    
    checkInCircle(center, r);
  }
  
  void checkInCircle(PVector center, float r){
    if(dist(center.x, center.y, x, y) < r){
      inCircle = true;
    }else{
      inCircle = false;
    }
  }
  
  void show(){
    if(inCircle){
      stroke(0, 255, 0);
    }else{
      stroke(255, 0, 0);
    }
    strokeWeight(4);
    
    point(x, y);
  }
}
