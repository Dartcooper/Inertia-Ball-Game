
public class BoomBlock { 

  PVector location;   //location
  float wid;
  float len;
  float boom;

  public void render() {
    fill(255,255,0);
    rect(location.x,location.y,wid,len);
}

 public boolean test(Player p){
   
   if (p.location.x >= location.x -10    &&   p.location.x <= location.x + wid + 10   &&    p.location.y >= location.y - 10    &&    p.location.y <= location.y + len + 10){
     return true;
   }
   
   return false;
   
 }
 
 public int testSide(Player p){
   

   if (!(p.pLocation.x >= location.x -10)){ 
     //println("1");
   return 1;
   }
   if (!(p.pLocation.x <= location.x + wid + 10)){
     //println("2");
      return 2; 
    }
     if (!(p.pLocation.y >= location.y - 10)){
       //println("3");
      return 3; 
     }
      if (!(p.pLocation.y <= location.y + len + 10)){
      //println("4");
        return 4; 
      }
      return 0;
 }



  BoomBlock (PVector loc, Float w, Float l, float b) {
    location = loc;      //sets the location
    wid = w;
    len = l;
    boom = b;
  }
} 
