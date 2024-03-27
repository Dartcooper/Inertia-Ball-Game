
public class Saw { 
PVector location;
float rad;
int count;

  void render(){
    if (count%3 == 0){
      image(saw1, location.x-(301 * rad), location.y-(228 * rad), 600 * rad, 450 * rad );
    } else if(count%3 == 1){
      image(saw2, location.x-(301 * rad), location.y-(228 * rad), 600 * rad, 450 * rad);
    } else if(count%3 == 2){
      image(saw3, location.x-(301 * rad), location.y-(228 * rad), 600 * rad, 450 * rad);
    }
    count++;
  }
  
  
  public boolean test(Player p){
     return ( abs( sqrt(sq(p.location.x - location.x) + sq(p.location.y - location.y)) )  <= 10 + rad*(45));
 }
  
  
  
  Saw (PVector loc, Float r) {
    location = loc;      //sets the location
    rad = r;
  }
  
  
}
