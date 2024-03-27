
public class Player { 

  PVector location;   //location
  PVector pLocation;  //previous location
  PVector startLoc;
  Float mass;   //mass
  PVector velocity;   //velocity
  private PVector acceleration;   //acceleration
  private PVector forceG;   //force of grav
  PVector col;
  boolean up;
  boolean down;
  boolean left;
  boolean right;
  boolean win;
  boolean slow;
  int health;
  int pNum;
  int deaths;
  boolean go;
  int count;


  public void render() {
    moves();
    if(count % 2 != 0){
     fill(col.x, col.y, col.z);
     ellipse(location.x,location.y,20,20);
    }
}


  public void update() {
    
    
    if(!go){
      if(count == 30){
        go = true;
        count = 0;
      }
      
      count++;
    }
    
    
    
    if (health == 0){
     deaths++;
     if(deaths>0){
      die.play();
      go = false;
     }
     velocity = new PVector(0,0);
     location = new PVector(startLoc.x,startLoc.y); 
     health = 100;
     
    }
    
    
    if (up) {
      if(go){
       this.updateU();
      }
    }
    if (down) {
      if(go){
       this.updateD();
      }
    }
    if (left) {
      if(go){
       this.updateL();
      }
    }
    if (right) {
      if(go){
       this.updateR();
      }
    }
    if (slow) {
      if(go){
       this.slow();
      }
    }
  pLocation = new PVector(location.x,location.y);
  location.add(velocity);       //updates curent location
  
   
   for (int i=0; i<winBlocks.size(); i++) {
     if (winBlocks.get(i).test(this)) {
       win = true;
       this.winner(pNum);
     }
   }
   
   for (int i=0; i<saws.size(); i++) {
     if (saws.get(i).test(this)) {
       damNum.add(new DamNum(new PVector(location.x, location.y), health));
       health = 0;

     }
   }
   
    for (int i=0; i<zaps.size(); i++) {
     if (zaps.get(i).test(this)) {
       damNum.add(new DamNum(new PVector(location.x, location.y), health));
       health = 0;

     }
   }
   
   
   for (int i=0; i<fuzBalls.size(); i++) {
     if (fuzBalls.get(i).test(this)) {
       damNum.add(new DamNum(new PVector(location.x, location.y), health));
       health = 0;

     }
   }
   
   
   
   
   for (int i=0; i<blocks.size(); i++) {
      if (blocks.get(i).test(this)) {
        if(smallBounce.isPlaying()){
         smallBounce.stop();
         smallBounce.play();
        } else{
         smallBounce.play();
        }
        if(blocks.get(i).testSide(this) >= 3 ){
          int tempH = health;
          int dam = health;
          health -= abs(pow(velocity.y,3));
          dam -= health;
          if(health < 0){
           health = 0;
           dam = tempH;
          }
          damNum.add(new DamNum(new PVector(location.x, location.y), dam));
          if(currentLevel == 35){
           invisDots.add(new InvisDot(new PVector(location.x, location.y), col));
          }
         location.y-=velocity.y;
         velocity.y = -velocity.y * 0.75;
         
        } else if(blocks.get(i).testSide(this) <= 2 ){
          int tempH = health;
          int dam = health;
          health -= abs(pow(velocity.x,3));
          dam -= health;
          if(health < 0){
           health = 0;
           dam = tempH;
          }
          damNum.add(new DamNum(new PVector(location.x, location.y), dam));
          if(currentLevel == 35){
           invisDots.add(new InvisDot(new PVector(location.x, location.y), col));
          }
         location.x-=velocity.x;
         velocity.x = -velocity.x * 0.75; 
        }
        i = blocks.size();
        if(health<0){
            health = 0;
          }
      }
    }
  
  
  
  
  
  for (int i=0; i<boomBlocks.size(); i++) {
      if (boomBlocks.get(i).test(this)) {
             if(!(boing.isPlaying())){
              boing.play();
             } else{
              boing.stop();
              boing.play();
             }
        if(boomBlocks.get(i).testSide(this) >= 3 ){
          if(velocity.y>0){
            location.y-=velocity.y;
            velocity.y = -velocity.y;
            if(velocity.y > -20){
             velocity.y -= boomBlocks.get(i).boom; 
            }
          }else{
            location.y-=velocity.y;
            velocity.y = -velocity.y;
            if(velocity.y < 20){
             velocity.y += boomBlocks.get(i).boom; 
            }
          }
        } else if(boomBlocks.get(i).testSide(this) <= 2 ){
          if(velocity.x>0){
            location.x-=velocity.x;
            velocity.x = -velocity.x;
            if(velocity.x > -20){
             velocity.x -= boomBlocks.get(i).boom; 
            }
          }else{
            location.x-=velocity.x;
            velocity.x = -velocity.x; 
            if(velocity.x < 20){
             velocity.x += boomBlocks.get(i).boom; 
            }
         
        }
        i = blocks.size();
      }
    }
  }
    
    
  }






 
  public void updateL() {
  forceG = new PVector(-10,0,0);
  acceleration = (PVector.mult(forceG, 1/mass));  //updates curent acceleration
  velocity.add(acceleration);   //updates velocity
  if(velocity.x <= -50){
    velocity.x = -50;
    }
    //moves(1);
  }
  
  public void updateR() {
  forceG = new PVector(10,0,0);
  acceleration = (PVector.mult(forceG, 1/mass));  //updates curent acceleration
  velocity.add(acceleration);   //updates velocity
  if(velocity.x >= 50){
    velocity.x = 50;
    }
    //moves(2);
  }
  
  public void updateU() {
  forceG = new PVector(0,-10,0);
  acceleration = (PVector.mult(forceG, 1/mass));  //updates curent acceleration
  velocity.add(acceleration);   //updates velocity
  if(velocity.y <= -50){
    velocity.y = -50;
    }
    //moves(3);
  }
  
  public void updateD() {
  forceG = new PVector(0,10,0);
  acceleration = (PVector.mult(forceG, 1/mass));  //updates curent acceleration
  velocity.add(acceleration);   //updates velocity
  if(velocity.y >= 50){
    velocity.y = 50;
    }
    //moves(4);
  }
   public void slow() {
   if(velocity.mag()<=0.35){
    velocity.sub(velocity);   //updates velocity
   }
  }
  


  public void moves(){
    fill(255,0,0);
    
    
    if(left && up){
     triangle(location.x+17, location.y + 17,location.x + 9, location.y, location.x, location.y + 9);
    }else if(up && right){
     triangle(location.x-17, location.y + 17,location.x - 9, location.y, location.x, location.y + 9);
    }else if(left && down){
     triangle(location.x+17, location.y - 17,location.x + 9, location.y, location.x, location.y - 9);
    }else if(down && right){
     triangle(location.x-17, location.y - 17,location.x - 9, location.y, location.x, location.y - 9);
    } else if(right){
     triangle(location.x - 20, location.y,location.x - 7, location.y - 7, location.x - 7, location.y + 7);
    } else if(left){
     triangle(location.x + 20, location.y,location.x + 7, location.y - 7, location.x + 7, location.y + 7);
    } else if(up){
     triangle(location.x, location.y + 20,location.x - 7, location.y + 7, location.x + 7, location.y + 7);
    }else if(down){
     triangle(location.x, location.y - 20,location.x - 7, location.y - 7, location.x + 7, location.y - 7);
    }
    
    
    
  }
  
  
  void winner(int i){
    currentLevel = 0;
    int trunkTime = (int)(t * 100);
    winSound.play();
    background(0);
    textSize(40);
    fill(255);
      if(i == 1){
       text("Player 1 wins!!!", width/2-150, 50);
       textSize(20);
       text("Level " + pastLevel + " complete", width/2-100, 100);
       text(" Player 1 took ", width/2-75, 300);
       textSize(30);
       text(trunkTime/100., width/2 - 50, 400);
       textSize(20);
       text(" seconds to reach the goal!", width/2-125, 500);
      } else{
       text("Player 2 wins!!!", width/2-150, 50);
       textSize(20);
       text("Level " + pastLevel + " complete", width/2-100, 100);
       text(" Player 2 took ", width/2-75, 300);
       textSize(30);
       text(trunkTime/100., width/2 - 50, 400);
       textSize(20);
       text(" seconds to reach the goal!", width/2-125, 500);
      }
     text("Player 1 deaths: " + P1.deaths, width/2-250, 200);
     text("Player 2 deaths: " + P2.deaths, width/2+50, 200);    //add deaths
     
      
    }
  
  
  void reMake(PVector loc){
    startLoc = loc;
    location = startLoc;      //sets the location
    pLocation = location;
    velocity = new PVector(0,0,0);
    health = 100;
    left = false;
    right = false;
    up = false;
    down = false;
    deaths = -1;
    go = true;
    count = 1;
  }

  Player (PVector loc, Float m, PVector c, int p) {      //constructor for the player
    startLoc = loc;
    location = startLoc;      //sets the location
    pLocation = location;
    mass = m;
    velocity = new PVector(0,0,0);
    health = 100;
    col = c;
    pNum = p;
    deaths = -1;
    go = true;
    count = 1;
  }
} 
