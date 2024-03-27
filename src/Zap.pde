
public class Zap { 

  PVector location1;   //location
  PVector location2;   //location
  boolean direct; // false = horizontal, true = verticle
  boolean on;
  float swapSpeed;
  int count;
  boolean sideSwap;

  public void render() {
    fill(192);
    ellipse(location1.x, location1.y, 15, 15);
    ellipse(location2.x, location2.y, 15, 15);
    stroke(51, 147, 255);
    strokeWeight(4);
    if (on) {
      if (direct) {
        line(location1.x, location1.y, location1.x, location1.y + 20);
        PVector temp = new PVector(location1.x, location1.y + 20);
        for (int i = 0; i<(location2.y-location1.y-60)/20; i++) {
          float tempR = random(5);
          if (i%2 == 0) {
            if (sideSwap) {
              line(temp.x, temp.y, location1.x + 5 + tempR, location1.y + i*20 + 40);
              temp = new PVector(location1.x + 5 + tempR, location1.y + i*20 + 40);
            } else {
              line(temp.x, temp.y, location1.x - 5 - tempR, location1.y + i*20 + 40);
              temp = new PVector(location1.x - 5 - tempR, location1.y + i*20 + 40);
            }
          } else {
            if (sideSwap) {
              line(temp.x, temp.y, location1.x - 5 - tempR, location1.y + i*20 + 40);
              temp = new PVector(location1.x - 5 - tempR, location1.y + i*20 + 40);
            } else {
              line(temp.x, temp.y, location1.x + 5 + tempR, location1.y + i*20 + 40);
              temp = new PVector(location1.x + 5 + tempR, location1.y + i*20 + 40);
            }
          }
        }
        line(temp.x, temp.y, location1.x, location2.y - 20);
        line(location1.x, location2.y - 20, location1.x, location2.y);
      } else {


        line(location1.x, location1.y, location1.x + 20, location1.y);
        PVector temp = new PVector(location1.x + 20, location1.y);
        for (int i = 0; i<(location2.x-location1.x-60)/20; i++) {
          float tempR = random(5);
          if (i%2 == 0) {
            if (sideSwap) {
              line(temp.x, temp.y, location1.x + i*20 + 40, location1.y  + 5 + tempR);
              temp = new PVector(location1.x + i*20 + 40, location1.y  + 5 + tempR);
            } else {
              line(temp.x, temp.y, location1.x + i*20 + 40, location1.y  - 5 - tempR);
              temp = new PVector(location1.x + i*20 + 40, location1.y  - 5 - tempR);
            }
          } else {
            if (sideSwap) {
              line(temp.x, temp.y, location1.x + i*20 + 40, location1.y  - 5 - tempR);
              temp = new PVector(location1.x + i*20 + 40, location1.y  - 5 - tempR);
            } else {
              line(temp.x, temp.y, location1.x + i*20 + 40, location1.y  + 5 + tempR);
              temp = new PVector(location1.x + i*20 + 40, location1.y  + 5 + tempR);
            }
          }
        }
        line(temp.x, temp.y, location2.x - 20, location2.y);
        line(location2.x - 20, location2.y, location2.x, location2.y);
      }
    }
    stroke(255);
    strokeWeight(1);
    sideSwap = !sideSwap;
  }

  public void update() {

    if (count%swapSpeed == 0) {
      on = !on;
       if(on){
         if(electricity.isPlaying()){
           electricity.stop();
           electricity.play();
         }else{
        electricity.play();
         }
         
       }
    }
    

    count++;
  }

  public boolean test(Player p) {
    if (on) {
      if (direct) {
        if (p.location.x >= location1.x - 17    &&   p.location.x <= location1.x + 17   &&    p.location.y <= location2.y + 7    &&    p.location.y >= location1.y - 7) {
          return true;
        }
        return false;
      } else {
        if (p.location.x >= location1.x - 7    &&   p.location.x <= location2.x + 7   &&    p.location.y >= location1.y - 17    &&    p.location.y <= location1.y + 17) {
          return true;
        }
        return false;
      }
    }
    return false;
  }



  Zap (PVector loc1, PVector loc2, float s, boolean onOff, int sI) {
    location1 = loc1;      //sets the location
    location2 = loc2;
    direct = (loc1.x == loc2.x);
    on = onOff;
    swapSpeed = s;
    count = sI;
  }
} 
