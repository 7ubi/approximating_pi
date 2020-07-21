ArrayList<Point> points;
int startN = 3000;

float pi;

// circle center and radius
PVector center;
float radius;

// number of Points added per frame
int addSpeed = 100;

void setup(){
  size(600, 600);
  points = new ArrayList<Point>();
  
  center = new PVector(0, height);
  radius = width;
  
  for(int i = 0; i < startN; i++){
    points.add(new Point(random(width), random(height), center, radius));
    Point p = points.get(i);
  }
}

void draw(){
  background(255);
  noFill();
  stroke(0);
  strokeWeight(2);
  circle(center.x, center.y, radius*2);
  
  int pointsInCircle = 0;
  
  for(Point p : points){
    p.show();
    if(p.inCircle){
      pointsInCircle++;
    }
  }
  float n = points.size();
  pi = 4 * pointsInCircle / n;
  
  textSize(25);
  fill(0);
  text("pi ≈ " + pi, 0, 50);
  text("n = " + points.size(), 0, 100);
  
  for(int i = 0; i < addSpeed; i++){ 
    points.add(new Point(random(width), random(height), center, radius));
  }
}
