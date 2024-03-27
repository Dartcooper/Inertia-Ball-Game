public class InvisDot { 
PVector location;
PVector col;
  
  
   public void render() {
     fill(col.x,col.y,col.z);
    ellipse(location.x,location.y,4,4);
   }
  
  InvisDot (PVector loc, PVector c) {
    location = loc;      //sets the location
    col = c;
  }
}
