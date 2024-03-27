import processing.sound.*;

public PImage saw1;
public PImage saw2;
public PImage saw3;
public SoundFile backgroundSound;
public SoundFile smallBounce;
public SoundFile die;
public SoundFile boing;
public SoundFile winSound;
public SoundFile electricity;
public SoundFile buzz;
Player P1;
Player P2;

public ArrayList<Block> blocks = new ArrayList();
public ArrayList<BoomBlock> boomBlocks = new ArrayList();
public ArrayList<winBlock> winBlocks = new ArrayList();
public ArrayList<DamNum> damNum = new ArrayList();
public ArrayList<Level> levels = new ArrayList();
public ArrayList<Saw> saws = new ArrayList();
public ArrayList<Zap> zaps = new ArrayList();
public ArrayList<FuzBall> fuzBalls = new ArrayList();
public ArrayList<InvisDot> invisDots = new ArrayList();


float t;
int currentLevel = 0;
int pastLevel = 0;
boolean winScrean;
void setup() {
  size(800, 600);

  backgroundSound = new SoundFile(this, "synthArcade.wav");
  smallBounce = new SoundFile(this, "smallBounce.wav");
  die = new SoundFile(this, "gameDie.mp3");
  boing = new SoundFile(this, "boing.wav");
  winSound = new SoundFile(this, "winSound.wav");
  electricity = new SoundFile(this, "electricity.wav");
  buzz = new SoundFile(this, "buzz.mp3");
  buzz.amp(0.30);
  saw1 = loadImage("Saw1.png");
  saw2 = loadImage("Saw2.png");
  saw3 = loadImage("Saw3.png");
  //P1 = new Player(new PVector(50, height/2), 100.);

  //P2 = new Player(new PVector(50, height/2), 100.);


  P1 = new Player(new PVector(), 100., new PVector(0, 0, 255), 1);
  P2 = new Player(new PVector(), 100., new PVector(255, 255, 0), 2);


  //BORDER BLOCKS, DONT SLASH
  //blocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
  //blocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
  //blocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
  //blocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
  //blocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));

  levels.add(new Level(new PVector(), new PVector(), 0));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 1));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 2));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 3));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 4));
  levels.add(new Level(new PVector(50, 60), new PVector(50, height-60), 5));
  levels.add(new Level(new PVector(50, height/2 - 30.), new PVector(50, height/2 + 30.), 6));
  levels.add(new Level(new PVector(50, 60), new PVector(50, height-60), 7));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 8));
  levels.add(new Level(new PVector(50, 60), new PVector(50, 60), 9));
  levels.add(new Level(new PVector(50, 60), new PVector(50, height - 60), 10));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 11));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 12));
  levels.add(new Level(new PVector(50, 50), new PVector(50, height-50), 13));
  levels.add(new Level(new PVector(50, 60), new PVector(50, height - 60), 14));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 15));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 16));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 17));
  levels.add(new Level(new PVector(50, height/2 - 30), new PVector(50, height/2 + 30), 18));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 19));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 20));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 21));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 22));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 23));
  levels.add(new Level(new PVector(50, 110), new PVector(50, 110), 24));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 25));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 26));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 27));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 28));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 29));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 30));
  levels.add(new Level(new PVector(50, 60), new PVector(50, height-60), 31));
  levels.add(new Level(new PVector(50, 80), new PVector(50, height-80), 32));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 33));
  levels.add(new Level(new PVector(50, 150), new PVector(50, 150), 34));
  levels.add(new Level(new PVector(50, height/2), new PVector(50, height/2), 35));
}

void draw() {
  //println(currentLevel);
  if (currentLevel != 0) { 

    if (pastLevel != currentLevel) {
      t = 0;
      P1.reMake(levels.get(currentLevel).P1StartPos);
      P2.reMake(levels.get(currentLevel).P2StartPos);
      blocks = levels.get(currentLevel).levelBlocks;
      boomBlocks = levels.get(currentLevel).levelBooms;
      saws = levels.get(currentLevel).levelSaws;
      zaps = levels.get(currentLevel).levelZaps;
      winBlocks = levels.get(currentLevel).levelWin;
      fuzBalls = levels.get(currentLevel).levelFuz;
      P1.health = 0;
      P2.health = 0;
      backgroundSound.play();
      if (levels.get(currentLevel).electOn) {
        electricity.play();
      }
      if (levels.get(currentLevel).sawOn) {
        buzz.play();
      }
    }
    if (!(backgroundSound.isPlaying())) {
      backgroundSound.play();
    }
    if (!(buzz.isPlaying()) && levels.get(currentLevel).sawOn) {
      buzz.play();
    }
    background(0);
    
if(currentLevel != 35){
  
    for (int i=0; i<blocks.size(); i++) {    //BASED ON LEVELS, WILL CHANGE
      blocks.get(i).render();
    }
}
    for (int i=0; i<boomBlocks.size(); i++) {    //BASED ON LEVELS, WILL CHANGE
      boomBlocks.get(i).render();
    }

    for (int i=0; i<winBlocks.size(); i++) {    //BASED ON LEVELS, WILL CHANGE
      winBlocks.get(i).render();
    }

    for (int i=0; i<saws.size(); i++) {    //BASED ON LEVELS, WILL CHANGE
      saws.get(i).render();
    }
    for (int i=0; i<fuzBalls.size(); i++) {    //BASED ON LEVELS, WILL CHANGE
      fuzBalls.get(i).render();
      fuzBalls.get(i).update();
    }

    for (int i=0; i<zaps.size(); i++) {    //BASED ON LEVELS, WILL CHANGE
      zaps.get(i).render();
      zaps.get(i).update();
    }
    
    for (int i=0; i<damNum.size(); i++) {    //BASED ON LEVELS, WILL CHANGE
      damNum.get(i).render();
      damNum.get(i).update();
      if (damNum.get(i).die) {
        damNum.remove(i);
      }
    }
    
    for (int i=0; i<invisDots.size(); i++) { 
      invisDots.get(i).render();
    }


    noFill();
    stroke(255);
    rect(20, 20, 100, 25);
    rect(170, 20, 100, 25);
    fill(255, 0, 0);
    rect(20, 20, P1.health, 25);
    fill(255, 0, 100);
    rect(170, 20, P2.health, 25);
    fill(255);
    textSize(10);
    text("HP  " + P1.health, 25, 37);
    text("Player 1", 25, 15);
    text("HP  " + P2.health, 175, 37);
    text("Player 2", 175, 15);

    fill(255);
    textSize(10);
    text("Time: " + ((int)(t*100))/100., width - 100, 50);

    fill(255);
    rect(width-30, 0, 30, 30);
    fill(0);
    textSize(35);
    text("x", width-25, 25);

    P2.update();
    P2.render();

    P1.update();
    P1.render();

    if (P1.win) {
      P1.winner(1);
    } else if (P2.win) {
      P2.winner(2);
    }

    t+=1/60.;
  } else if (!(P1.win) && !(P2.win)) {
    backgroundSound.stop();
    electricity.stop();
    buzz.stop();
    boing.stop();
    t = 0;
    for (int i=0; i<damNum.size(); i++) {
      damNum.remove(0);
    }
    for (int i=0; i<invisDots.size(); i++) {
      invisDots.remove(0);
    }
    background(255);
    fill(0, 0, 255);
    noStroke();
    rect(0, 0, width, 20);
    rect(0, height-20, width, 20);
    rect(0, 0, 20, height);
    rect(width-20, 0, 20, height);

    fill(0, 255, 0);
    stroke(0);
    strokeWeight(5);
    rect(100-25, 100-25, 50, 50);
    rect(200-25, 100-25, 50, 50);
    rect(300-25, 100-25, 50, 50);
    rect(400-25, 100-25, 50, 50);
    rect(500-25, 100-25, 50, 50);
    rect(600-25, 100-25, 50, 50);
    rect(700-25, 100-25, 50, 50);
    fill(200);
    rect(100-25, 200-25, 50, 50);
    rect(200-25, 200-25, 50, 50);
    rect(300-25, 200-25, 50, 50);
    rect(400-25, 200-25, 50, 50);
    fill(255, 0, 0);
    rect(500-25, 200-25, 50, 50);
    rect(600-25, 200-25, 50, 50);
    rect(700-25, 200-25, 50, 50);

    rect(100-25, 300-25, 50, 50);
    fill(255, 255, 0);
    rect(200-25, 300-25, 50, 50);
    rect(300-25, 300-25, 50, 50);
    rect(400-25, 300-25, 50, 50);
    rect(500-25, 300-25, 50, 50);
    fill(0, 0, 255);
    rect(600-25, 300-25, 50, 50);
    rect(700-25, 300-25, 50, 50);

    rect(100-25, 400-25, 50, 50);
    rect(200-25, 400-25, 50, 50);
    rect(300-25, 400-25, 50, 50);
    fill(0);
    stroke(255, 0, 0);
    rect(400-25, 400-25, 50, 50);
    rect(500-25, 400-25, 50, 50);
    rect(600-25, 400-25, 50, 50);
    rect(700-25, 400-25, 50, 50);

    rect(100-25, 500-25, 50, 50);
    rect(200-25, 500-25, 50, 50);
    rect(300-25, 500-25, 50, 50);
    rect(400-25, 500-25, 50, 50);
    rect(500-25, 500-25, 50, 50);
    rect(600-25, 500-25, 50, 50);
    rect(700-25, 500-25, 50, 50);
    stroke(0);
    strokeWeight(1);
    textSize(40);
    text("Select a level to start", width/2-200, 50);
    text("1", 100-13, 100+15);
    text("2", 200-13, 100+15);
    text("3", 300-13, 100+15);
    text("4", 400-13, 100+15);
    text("5", 500-13, 100+15);
    text("6", 600-13, 100+15);
    text("7", 700-13, 100+15);

    text("8", 100-13, 200+15);
    text("9", 200-13, 200+15);
    text("10", 300-26, 200+15);
    text("11", 400-26, 200+15);
    text("12", 500-26, 200+15);
    text("13", 600-26, 200+15);
    text("14", 700-26, 200+15);

    text("15", 100-26, 300+15);
    text("16", 200-26, 300+15);
    text("17", 300-26, 300+15);
    text("18", 400-26, 300+15);
    text("19", 500-26, 300+15);
    text("20", 600-24, 300+15);
    text("21", 700-24, 300+15);

    text("22", 100-24, 400+15);
    text("23", 200-24, 400+15);
    text("24", 300-24, 400+15);
    fill(255, 0, 0);
    text("25", 400-24, 400+15);
    text("26", 500-25, 400+15);
    text("27", 600-25, 400+15);
    text("28", 700-25, 400+15);

    text("29", 100-26, 500+15);
    text("30", 200-26, 500+15);
    text("31", 300-25, 500+15);
    text("32", 400-25, 500+15);
    text("33", 500-25, 500+15);
    text("34", 600-25, 500+15);
    text("35", 700-25, 500+15);
    fill(255);
  } else {
    backgroundSound.stop();
    electricity.stop();
    buzz.stop();
    boing.stop();
    winScrean = true;
    fill(255);
    rect(width-30, 0, 30, 30);
    fill(0);
    textSize(35);
    text("x", width-25, 25);
  }

  pastLevel = currentLevel;
}


void mouseClicked() {

  //println(mouseX + " " + mouseY);

  if (currentLevel == 0) {

    if (mouseX <= 125    &&   mouseX >= 75   &&    mouseY >= 75    &&    mouseY <= 125) {
      currentLevel = 1;
    } else if (mouseX <= 225    &&   mouseX >= 175   &&    mouseY >= 75    &&    mouseY <= 125) {
      currentLevel = 2;
    } else if (mouseX <= 325    &&   mouseX >= 275   &&    mouseY >= 75    &&    mouseY <= 125) {
      currentLevel = 3;
    } else if (mouseX <= 425    &&   mouseX >= 375   &&    mouseY >= 75    &&    mouseY <= 125) {
      currentLevel = 4;
    } else if (mouseX <= 525    &&   mouseX >= 475   &&    mouseY >= 75    &&    mouseY <= 125) {
      currentLevel = 5;
    } else if (mouseX <= 625    &&   mouseX >= 575   &&    mouseY >= 75    &&    mouseY <= 125) {
      currentLevel = 6;
    } else if (mouseX <= 725    &&   mouseX >= 675   &&    mouseY >= 75    &&    mouseY <= 125) {
      currentLevel = 7;
    } else if (mouseX <= 125    &&   mouseX >= 75   &&    mouseY >= 175    &&    mouseY <= 225) {
      currentLevel = 8;
    } else if (mouseX <= 225    &&   mouseX >= 175   &&    mouseY >= 175    &&    mouseY <= 225) {
      currentLevel = 9;
    } else if (mouseX <= 325    &&   mouseX >= 275   &&    mouseY >= 175    &&    mouseY <= 225) {
      currentLevel = 10;
    } else if (mouseX <= 425    &&   mouseX >= 375   &&    mouseY >= 175    &&    mouseY <= 225) {
      currentLevel = 11;
    } else if (mouseX <= 525    &&   mouseX >= 475   &&    mouseY >= 175    &&    mouseY <= 225) {
      currentLevel = 12;
    } else if (mouseX <= 625    &&   mouseX >= 575   &&    mouseY >= 175    &&    mouseY <= 225) {
      currentLevel = 13;
    } else if (mouseX <= 725    &&   mouseX >= 675   &&    mouseY >= 175    &&    mouseY <= 225) {
      currentLevel = 14;
    } else if (mouseX <= 125    &&   mouseX >= 75   &&    mouseY >= 275    &&    mouseY <= 325) {
      currentLevel = 15;
    } else if (mouseX <= 225    &&   mouseX >= 175   &&    mouseY >= 275    &&    mouseY <= 325) {
      currentLevel = 16;
    } else if (mouseX <= 325    &&   mouseX >= 275   &&    mouseY >= 275    &&    mouseY <= 325) {
      currentLevel = 17;
    } else if (mouseX <= 425    &&   mouseX >= 375   &&    mouseY >= 275    &&    mouseY <= 325) {
      currentLevel = 18;
    } else if (mouseX <= 525    &&   mouseX >= 475   &&    mouseY >= 275    &&    mouseY <= 325) {
      currentLevel = 19;
    } else if (mouseX <= 625    &&   mouseX >= 575   &&    mouseY >= 275    &&    mouseY <= 325) {
      currentLevel = 20;
    } else if (mouseX <= 725    &&   mouseX >= 675   &&    mouseY >= 275    &&    mouseY <= 325) {
      currentLevel = 21;
    } else if (mouseX <= 125    &&   mouseX >= 75   &&    mouseY >= 375    &&    mouseY <= 425) {
      currentLevel = 22;
    } else if (mouseX <= 225    &&   mouseX >= 175   &&    mouseY >= 375    &&    mouseY <= 425) {
      currentLevel = 23;
    } else if (mouseX <= 325    &&   mouseX >= 275   &&    mouseY >= 375    &&    mouseY <= 425) {
      currentLevel = 24;
    } else if (mouseX <= 425    &&   mouseX >= 375   &&    mouseY >= 375    &&    mouseY <= 425) {
      currentLevel = 25;
    } else if (mouseX <= 525    &&   mouseX >= 475   &&    mouseY >= 375    &&    mouseY <= 425) {
      currentLevel = 26;
    } else if (mouseX <= 625    &&   mouseX >= 575   &&    mouseY >= 375    &&    mouseY <= 425) {
      currentLevel = 27;
    } else if (mouseX <= 725    &&   mouseX >= 675   &&    mouseY >= 375    &&    mouseY <= 425) {
      currentLevel = 28;
    } else if (mouseX <= 125    &&   mouseX >= 75   &&    mouseY >= 475    &&    mouseY <= 525) {
      currentLevel = 29;
    } else if (mouseX <= 225    &&   mouseX >= 175   &&    mouseY >= 475    &&    mouseY <= 525) {
      currentLevel = 30;
    } else if (mouseX <= 325    &&   mouseX >= 275   &&    mouseY >= 475    &&    mouseY <= 525) {
      currentLevel = 31;
    } else if (mouseX <= 425    &&   mouseX >= 375   &&    mouseY >= 475    &&    mouseY <= 525) {
      currentLevel = 32;
    } else if (mouseX <= 525    &&   mouseX >= 475   &&    mouseY >= 475    &&    mouseY <= 525) {
      currentLevel = 33;
    } else if (mouseX <= 625    &&   mouseX >= 575   &&    mouseY >= 475    &&    mouseY <= 525) {
      currentLevel = 34;
    } else if (mouseX <= 725    &&   mouseX >= 675   &&    mouseY >= 475    &&    mouseY <= 525) {
      currentLevel = 35;
    }
  }
  if (mouseX <= width    &&   mouseX >= width-30   &&    mouseY >= 0    &&    mouseY <= 30) {
    currentLevel = 0; 
    winScrean = false;
    P1.win = false;
    P2.win = false;
  }
}




void keyPressed() {


  if (currentLevel != 0) {

    if (key == 'w') {
      P2.up = true;
      //println("up on");
    }
    if (key == 's') {
      P2.down = true;
      //println("down on");
    }
    if (key == 'a') {
      P2.left = true;
      //println("left on");
    }
    if (key == 'd') {
      P2.right = true;
      //println("right on");
    }
    if (key == '/') {
      P1.slow = true;
      //println("slow on");
    }
    if (key == 't') {
      P2.slow = true;
      //println("slow on");
    }


    if (key == CODED) {

      if (keyCode == UP) {
        P1.up = true;
        //println("up on");
      }
      if (keyCode == DOWN) {
        P1.down = true;
        //println("down on");
      }
      if (keyCode == LEFT) {
        P1.left = true;
        //println("left on");
      }
      if (keyCode == RIGHT) {
        P1.right = true;
        //println("right on");
      }
    }
  }
}








void keyReleased() {


  if (currentLevel != 0) {
    if (key == 'w') {
      P2.up = false;
      //println("up off");
    }
    if (key == 's') {
      P2.down = false;
      //println("down off");
    }
    if (key == 'a') {
      P2.left = false;
      //println("left off");
    }
    if (key == 'd') {
      P2.right = false;
      //println("right off");
    }
    if (key == '/') {
      P1.slow = false;
      //println("slow off");
    }
    if (key == 't') {
      P2.slow = false;
      //println("slow off");
    }


    if (key == CODED) {

      if (keyCode == UP) {
        P1.up = false;
        //println("up off");
      }
      if (keyCode == DOWN) {
        P1.down = false;
        //println("down off");
      }
      if (keyCode == LEFT) {
        P1.left = false;
        //println("left off");
      }
      if (keyCode == RIGHT) {
        P1.right = false;
        //println("right off");
      }
    }
  }
}
