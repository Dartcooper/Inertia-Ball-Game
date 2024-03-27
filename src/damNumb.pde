public class DamNum { 
PVector location;
int num;
int time;
boolean die;
int quad;
  
  
   public void render() {
     fill(255);
    textSize(sqrt(num)+10);
    text("- " + num ,location.x , location.y);
    //ellipse(location.x,location.y,4,4);
   }


    public void update() {
      
      
      if(quad == 1){
        location.x -= 0.5;
        location.y += 0.5;
      } else if(quad == 2){
        location.x += 0.5;
        location.y += 0.5;
      } else if(quad == 3){
        location.x += 0.5;
        location.y -= 0.5;
      } else if(quad == 4){
        location.x -= 0.5;
        location.y -= 0.5;
      }
    
    
    time++;
    if(time >= 60){
      die = true;
    }
    }
  
  DamNum (PVector loc, int count) {
    location = loc;      //sets the location
    num = count;
    if(num > 100){
      num = 100;
    }
    time = 0;
    die = false;
    
    if(loc.x > width/2){
      if(loc.y > height/2){
       quad = 4;
      } else{
       quad = 1;
      }
    } else{
      if (loc.y > height/2){
       quad = 3;
      } else{
       quad = 2; 
      }
    }
  
}





}
