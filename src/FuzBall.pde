
public class FuzBall { 
  PVector location;
  PVector location1;
  PVector location2;
  PVector location3;
  PVector location4;
  PVector location5;
  
  float speed;
  float t1;
  float t2;
  float t3;
  float t4;

  float rad;
  int count;

  void render() {

    line(location1.x, location1.y, location2.x, location2.y);
    line(location2.x, location2.y, location3.x, location3.y);
    line(location3.x, location3.y, location4.x, location4.y);
    line(location4.x, location4.y, location5.x, location5.y);
    fill(255);
    ellipse(location1.x, location1.y, 4, 4);
    ellipse(location2.x, location2.y, 4, 4);
    ellipse(location3.x, location3.y, 4, 4);
    ellipse(location4.x, location4.y, 4, 4);
    ellipse(location5.x, location5.y, 4, 4);


    fill(255, 28, 28);
    ellipse(location.x, location.y, rad, rad);
  }


  void update() {

    if(count < t1){
      PVector temp = PVector.mult(PVector.sub(location,location2).normalize(),PVector.sub(location,location2).mag() - speed);
      location = PVector.add(location2,temp);
    } else if(count < t1 + t2){
      PVector temp = PVector.mult(PVector.sub(location,location3).normalize(),PVector.sub(location,location3).mag() - speed);
      location = PVector.add(location3,temp);
    } else if(count < t1 + t2 + t3){
      PVector temp = PVector.mult(PVector.sub(location,location4).normalize(),PVector.sub(location,location4).mag() - speed);
      location = PVector.add(location4,temp);
    } else if(count < t1 + t2 + t3 + t4){
      PVector temp = PVector.mult(PVector.sub(location,location5).normalize(),PVector.sub(location,location5).mag() - speed);
      location = PVector.add(location5,temp);
    } else if(count < t1 + t2 + t3 + t4 + t4){
      PVector temp = PVector.mult(PVector.sub(location,location4).normalize(),PVector.sub(location,location4).mag() - speed);
      location = PVector.add(location4,temp);
    } else if(count < t1 + t2 + t3 + t4 + t4 + t3){
      PVector temp = PVector.mult(PVector.sub(location,location3).normalize(),PVector.sub(location,location3).mag() - speed);
      location = PVector.add(location3,temp);
    } else if(count < t1 + t2 + t3 + t4 + t4 + t3 + t2){
      PVector temp = PVector.mult(PVector.sub(location,location2).normalize(),PVector.sub(location,location2).mag() - speed);
      location = PVector.add(location2,temp);
    } else{
      PVector temp = PVector.mult(PVector.sub(location,location1).normalize(),PVector.sub(location,location1).mag() - speed);
      location = PVector.add(location1,temp);
    }
    
    
    count ++;
    if(count >= 2 * (t1 + t2 + t3 + t4)){
      count = 0;
    }
  }


  public boolean test(Player p) {
    return ( abs( sqrt(sq(p.location.x - location.x) + sq(p.location.y - location.y)) )  <=  rad/2 + 10);
  }



  FuzBall (PVector loc1, PVector loc2, PVector loc3, float s, float r) {
    location = loc1;
    location1 = new PVector (loc1.x, loc1.y);      //sets the location
    location2 = loc2;
    location3 = loc3;
    location4 = loc3;
    location5 = loc3;
    speed = s;
    rad = 10 * r;
    t1 = PVector.sub(loc2,loc1).mag()/s;
    t2 = PVector.sub(loc3,loc2).mag()/s;
    t3 = 0;
    t4 = 0;
   
  }
  
  FuzBall (PVector loc1, PVector loc2, float s, float r) {
    location = loc1;
    location1 = new PVector (loc1.x, loc1.y);      //sets the location
    location2 = loc2;
    location3 = loc2;
    location4 = loc2;
    location5 = loc2;
    
    speed = s;
    rad = 10 * r;
    t1 = PVector.sub(loc2,loc1).mag()/s;
    t2 = 0;
    t3 = 0;
    t4 = 0;
   
  }
  
  FuzBall (PVector loc1, PVector loc2, PVector loc3, PVector loc4, float s, float r) {
    location = loc1;
    location1 = new PVector (loc1.x, loc1.y);      //sets the location
    location2 = loc2;
    location3 = loc3;
    location4 = loc4;
    location5 = loc4;
    speed = s;
    rad = 10 * r;
    t1 = PVector.sub(loc2,loc1).mag()/s;
    t2 = PVector.sub(loc3,loc2).mag()/s;
    t3 = PVector.sub(loc4,loc3).mag()/s;
    t4 = 0;
   
  }
  
  FuzBall (PVector loc1, PVector loc2, PVector loc3, PVector loc4, PVector loc5, float s, float r) {
    location = loc1;
    location1 = new PVector (loc1.x, loc1.y);      //sets the location
    location2 = loc2;
    location3 = loc3;
    location4 = loc4;
    location5 = loc5;
    speed = s;
    rad = 10 * r;
    t1 = PVector.sub(loc2,loc1).mag()/s;
    t2 = PVector.sub(loc3,loc2).mag()/s;
    t3 = PVector.sub(loc4,loc3).mag()/s;
    t4 = PVector.sub(loc5,loc4).mag()/s;
   
  }
  
  
}
