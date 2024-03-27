
public class winBlock { 

  PVector location;   //location
  float wid;
  float len;

  public void render() {
    fill(0, 255, 0);
    rect(location.x,location.y,wid,len);
}

 public boolean test(Player p){
   
   return(p.location.x >= location.x -10    &&   p.location.x <= location.x + wid + 10   &&    p.location.y >= location.y - 10    &&    p.location.y <= location.y + len + 10);
   
 }
 
 
  winBlock (PVector loc, Float w, Float l) {
    location = loc;      //sets the location
    wid = w;
    len = l;
  }
} 
