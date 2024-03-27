
public class Level { 
  int levelNum;
  ArrayList<Block> levelBlocks = new ArrayList();
  ArrayList<winBlock> levelWin = new ArrayList();
  ArrayList<Saw> levelSaws = new ArrayList();
  ArrayList<FuzBall> levelFuz = new ArrayList();
  ArrayList<BoomBlock> levelBooms = new ArrayList();
  ArrayList<Zap> levelZaps = new ArrayList();
  PVector P1StartPos;
  PVector P2StartPos;
  boolean electOn;
  boolean sawOn;









  void addObsticles(int i) {

    if (i == 0) {
      //levelBlocks.clear();
    } else if (i == 1) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));

      levelBlocks.add(new Block(new PVector(width/2-10, height/2-100), 20., 200.));


      //levelSaws.add(new Saw(new PVector(200,200),0.5));


      //levelFuz.add(new FuzBall(new PVector(100,100), new PVector(600,100), new PVector(600,400), 2, 3.0));
      //levelFuz.add(new FuzBall(new PVector(600,400), new PVector(0,500), new PVector(100,100), 2, 3.0));
    } else if (i == 2) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));

      levelBlocks.add(new Block(new PVector(width/3, 0), 20., height/2+50.));
      levelBlocks.add(new Block(new PVector(2*width/3, height/2-50), 20., height/2+50.));
    } else if (i == 3) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));


      levelBlocks.add(new Block(new PVector(0, height/2+70.), width/3+20., 20.));
      levelBlocks.add(new Block(new PVector(0, height/2-90.), width/3+20., 20.));
      levelBlocks.add(new Block(new PVector(120, height/5-20.), width/3., 20.));
      levelBlocks.add(new Block(new PVector(120, height*4/5.), width/3., 20.));
      levelBlocks.add(new Block(new PVector(1.4 * width/3, 100), 20., height-200.));
    } else if (i == 4) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));

      levelBlocks.add(new Block(new PVector(0, height/2+70.), width/5+0., 20.));
      levelBlocks.add(new Block(new PVector(0, height/2-90.), width/3+20., 20.));
      levelBlocks.add(new Block(new PVector(width/3+20., height/2-90.), 20., height/2-20.));
      levelBlocks.add(new Block(new PVector(1.5 * width/3, 100), 20., height-120.));
      levelBlocks.add(new Block(new PVector(120, height/5-20.), width/3+14., 20.));

      levelBlocks.add(new Block(new PVector(1.75 * width/3, 20), 20., 80.));
      levelBlocks.add(new Block(new PVector(2 * width/3, 80), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.25 * width/3, 20), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.5 * width/3, 80), 20., 80.));

      levelBlocks.add(new Block(new PVector(1.75 * width/3, 140), 20., 80.));
      levelBlocks.add(new Block(new PVector(2 * width/3, 200), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.25 * width/3, 140), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.5 * width/3, 200), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.75 * width/3, 140), 20., 80.));

      levelBlocks.add(new Block(new PVector(1.75 * width/3, 260), 20., 80.));
      levelBlocks.add(new Block(new PVector(2 * width/3, 320), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.25 * width/3, 260), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.5 * width/3, 320), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.75 * width/3, 260), 20., 80.));

      levelBlocks.add(new Block(new PVector(1.75 * width/3, 380), 20., 80.));
      levelBlocks.add(new Block(new PVector(2 * width/3, 440), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.25 * width/3, 380), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.5 * width/3, 440), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.75 * width/3, 380), 20., 80.));

      levelBlocks.add(new Block(new PVector(1.75 * width/3, 500), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.25 * width/3, 500), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.75 * width/3, 500), 20., 80.));
    } else if (i == 5) {
      levelWin.add(new winBlock(new PVector(540, 180), 20., 240.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height-20.));

      levelBlocks.add(new Block(new PVector(0, 100), 300., 20.));
      levelBlocks.add(new Block(new PVector(0, height - 120), 300., 20.));
      levelBlocks.add(new Block(new PVector(400, 0), 20., 230.));
      levelBlocks.add(new Block(new PVector(400, 370), 20., 230.));
      levelBlocks.add(new Block(new PVector(100, 210), 300., 20.));
      levelBlocks.add(new Block(new PVector(100, height - 230), 300., 20.));
      levelBlocks.add(new Block(new PVector(520, 160), 20., 280.));
      levelBlocks.add(new Block(new PVector(520, 160), 170., 20.));
      levelBlocks.add(new Block(new PVector(520, 420), 170., 20.));
    } else if (i == 6) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));

      levelBlocks.add(new Block(new PVector(0, height/2-10), width - 100., 20.));
      levelBlocks.add(new Block(new PVector(140, 100), 20., 190.));
      levelBlocks.add(new Block(new PVector(280, 20), 20., 190.));
      levelBlocks.add(new Block(new PVector(420, 100), 20., 190.));
      levelBlocks.add(new Block(new PVector(580, 20), 20., 190.));
      levelBlocks.add(new Block(new PVector(680, 100), 20., 190.));

      levelBlocks.add(new Block(new PVector(140, 310), 20., 190.));
      levelBlocks.add(new Block(new PVector(280, 390), 20., 190.));
      levelBlocks.add(new Block(new PVector(420, 310), 20., 190.));
      levelBlocks.add(new Block(new PVector(580, 390), 20., 190.));
      levelBlocks.add(new Block(new PVector(680, 310), 20., 190.));
    } else if (i == 7) {
      levelWin.add(new winBlock(new PVector(650, 200), 130., 20.));
      levelWin.add(new winBlock(new PVector(650, 380), 130., 20.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height * 1.0));

      levelBlocks.add(new Block(new PVector(0, 100), 200., 20.));
      levelBlocks.add(new Block(new PVector(0, height - 120), 200., 20.));
      levelBlocks.add(new Block(new PVector(300, 0), 20., 170.));
      levelBlocks.add(new Block(new PVector(300, height - 150), 20., 170.));
      levelBlocks.add(new Block(new PVector(100, 225), 300., 20.));
      levelBlocks.add(new Block(new PVector(100, height - 245.), 300., 20.));
      levelBlocks.add(new Block(new PVector(400, 100), 20., 150.));
      levelBlocks.add(new Block(new PVector(400, height - 250), 20., 150.));
      levelBlocks.add(new Block(new PVector(400, 100), 250., 20.));
      levelBlocks.add(new Block(new PVector(400, height - 120), 250., 20.));
      levelBlocks.add(new Block(new PVector(630, 200.), 20., 200.));
    } else if (i == 8) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));

      levelBlocks.add(new Block(new PVector(190, 0), 20., 490.));
      levelBlocks.add(new Block(new PVector(490, 110), 20., 490.));

      levelSaws.add(new Saw(new PVector(500, 30), 0.5));
      levelSaws.add(new Saw(new PVector(200, height - 30), 0.5));
    } else if (i == 9) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));

      levelBlocks.add(new Block(new PVector(190, 0), 20., 410.));
      levelBlocks.add(new Block(new PVector(190, 500), 20., 100.));
      levelBlocks.add(new Block(new PVector(420, 0), 20., 110.));
      levelBlocks.add(new Block(new PVector(420, 180), 20., 420.));
      levelBlocks.add(new Block(new PVector(650, 0), 20., 270.));
      levelBlocks.add(new Block(new PVector(650, 330), 20., 255.));

      levelSaws.add(new Saw(new PVector(661.5, 275), 0.25));
      levelSaws.add(new Saw(new PVector(661.5, 325), 0.25));
      levelSaws.add(new Saw(new PVector(431.5, 115), 0.25));
      levelSaws.add(new Saw(new PVector(431.5, 175), 0.25));
      levelSaws.add(new Saw(new PVector(201.5, 415), 0.25));
      levelSaws.add(new Saw(new PVector(201.5, 495), 0.25));
    } else if (i == 10) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));

      levelBlocks.add(new Block(new PVector(200, 190), width - 200., 20.));
      levelBlocks.add(new Block(new PVector(200, 390), width - 200., 20.));
      levelBlocks.add(new Block(new PVector(0, 120), width - 100., 20.));
      levelBlocks.add(new Block(new PVector(0, 460), width - 100., 20.));      
      levelBlocks.add(new Block(new PVector(300, 210), 20., 130.));
      levelBlocks.add(new Block(new PVector(375, 260), 20., 130.));
      levelBlocks.add(new Block(new PVector(450, 210), 20., 130.));
      levelBlocks.add(new Block(new PVector(525, 260), 20., 130.));
      levelBlocks.add(new Block(new PVector(600, 210), 20., 130.));
      levelBlocks.add(new Block(new PVector(675, 260), 20., 130.));

      levelSaws.add(new Saw(new PVector(400, 180), 0.4));
      levelSaws.add(new Saw(new PVector(400, 420), 0.4));
    } else if (i == 11) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));

      levelBlocks.add(new Block(new PVector(20, 240), width - 20., 20.));
      levelBlocks.add(new Block(new PVector(20, 340), width - 20., 20.));

      levelSaws.add(new Saw(new PVector(100, 285), 0.15));
      levelSaws.add(new Saw(new PVector(200, 285), 0.2));
      levelSaws.add(new Saw(new PVector(300, 285), 0.25));
      levelSaws.add(new Saw(new PVector(400, 285), 0.275));
      levelSaws.add(new Saw(new PVector(500, 285), 0.3));
      levelSaws.add(new Saw(new PVector(150, 315), 0.15));
      levelSaws.add(new Saw(new PVector(250, 315), 0.2));
      levelSaws.add(new Saw(new PVector(350, 315), 0.25));
      levelSaws.add(new Saw(new PVector(450, 315), 0.275));
      levelSaws.add(new Saw(new PVector(550, 315), 0.3));
    } else if (i == 12) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));


      levelBlocks.add(new Block(new PVector(200, 0), 20., 490.));
      levelBlocks.add(new Block(new PVector(300, 110), 20., 490.));

      levelFuz.add(new FuzBall(new PVector(260, 540), new PVector(260, 240), new PVector(350, 240), new PVector(260, 240), new PVector(260, 60), 2, 3.0));
    } else if (i == 13) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));

      levelBlocks.add(new Block(new PVector(0, 80), 270., 20.));
      levelBlocks.add(new Block(new PVector(0, 150), 270., 20.));
      levelBlocks.add(new Block(new PVector(250, 80), 20., 90.));
      levelBlocks.add(new Block(new PVector(330, 0), 20., 240.));
      levelBlocks.add(new Block(new PVector(80, 230), 770., 20.));
      levelBlocks.add(new Block(new PVector(0, 500), 270., 20.));
      levelBlocks.add(new Block(new PVector(0, 430), 270., 20.));
      levelBlocks.add(new Block(new PVector(250, 430), 20., 90.));
      levelBlocks.add(new Block(new PVector(330, 360), 20., 240.));
      levelBlocks.add(new Block(new PVector(80, 350), 770., 20.));

      levelFuz.add(new FuzBall(new PVector(100, 50), new PVector(300, 50), new PVector(300, 200), new PVector(100, 200), new PVector(100, 150), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(100, 550), new PVector(300, 550), new PVector(300, 400), new PVector(100, 400), new PVector(100, 450), 2, 3.0));
    } else if (i == 14) {
      levelWin.add(new winBlock(new PVector(540, 180), 20., 240.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height-20.));

      levelBlocks.add(new Block(new PVector(0, 100), 300., 20.));
      levelBlocks.add(new Block(new PVector(0, height - 120), 300., 20.));
      levelBlocks.add(new Block(new PVector(400, 0), 20., 230.));
      levelBlocks.add(new Block(new PVector(400, 370), 20., 230.));
      levelBlocks.add(new Block(new PVector(100, 210), 300., 20.));
      levelBlocks.add(new Block(new PVector(100, height - 230), 300., 20.));
      levelBlocks.add(new Block(new PVector(560, 160), 20., 280.));
      levelBlocks.add(new Block(new PVector(420, 160), 160., 20.));
      levelBlocks.add(new Block(new PVector(420, 420), 160., 20.));

      levelFuz.add(new FuzBall(new PVector(150, 370), new PVector(150, 230), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200, 230), new PVector(200, 370), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(250, 370), new PVector(250, 230), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(300, 230), new PVector(300, 370), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(350, 370), new PVector(350, 230), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(400, 230), new PVector(400, 370), 2, 3.0));

      levelFuz.add(new FuzBall(new PVector(100, 100), new PVector(150, 20), new PVector(200, 100), 1.5, 3.0));
      levelFuz.add(new FuzBall(new PVector(200, 100), new PVector(250, 20), new PVector(300, 100), 1.5, 3.0));
      levelFuz.add(new FuzBall(new PVector(100, 120), new PVector(150, 200), new PVector(200, 120), 1.5, 3.0));
      levelFuz.add(new FuzBall(new PVector(200, 120), new PVector(250, 200), new PVector(300, 120), 1.5, 3.0));
      levelFuz.add(new FuzBall(new PVector(300, 110), new PVector(400, 110), 1, 2.0));

      levelFuz.add(new FuzBall(new PVector(100, 500), new PVector(150, 580), new PVector(200, 500), 1.5, 3.0));
      levelFuz.add(new FuzBall(new PVector(200, 500), new PVector(250, 580), new PVector(300, 500), 1.5, 3.0));
      levelFuz.add(new FuzBall(new PVector(100, 480), new PVector(150, 400), new PVector(200, 480), 1.5, 3.0));
      levelFuz.add(new FuzBall(new PVector(200, 480), new PVector(250, 400), new PVector(300, 480), 1.5, 3.0));
      levelFuz.add(new FuzBall(new PVector(300, 490), new PVector(400, 490), 1, 2.0));
    } else if (i == 15) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));

      levelBlocks.add(new Block(new PVector(20, 200), width - 20., 20.));
      levelBlocks.add(new Block(new PVector(20, 380), width - 20., 20.));

      levelFuz.add(new FuzBall(new PVector(100, 230), new PVector(100, 370), new PVector(150, 230), new PVector(150, 370), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(150, 370), new PVector(150, 230), new PVector(100, 370), new PVector(100, 230), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200, 230), new PVector(200, 370), new PVector(250, 230), new PVector(250, 370), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(250, 370), new PVector(250, 230), new PVector(200, 370), new PVector(200, 230), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(300, 230), new PVector(300, 370), new PVector(350, 230), new PVector(350, 370), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(350, 370), new PVector(350, 230), new PVector(300, 370), new PVector(300, 230), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(400, 230), new PVector(400, 370), new PVector(450, 230), new PVector(450, 370), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(450, 370), new PVector(450, 230), new PVector(400, 370), new PVector(400, 230), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(500, 230), new PVector(500, 370), new PVector(550, 230), new PVector(550, 370), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(550, 370), new PVector(550, 230), new PVector(500, 370), new PVector(500, 230), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600, 230), new PVector(600, 370), new PVector(650, 230), new PVector(650, 370), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(650, 370), new PVector(650, 230), new PVector(600, 370), new PVector(600, 230), 2, 3.0));
    } else if (i == 16) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));

      levelBooms.add(new BoomBlock(new PVector(300, 80), 20., 440., 4));
      levelBooms.add(new BoomBlock(new PVector(500, 0), 20., 270., 4));
      levelBooms.add(new BoomBlock(new PVector(500, 330), 20., 270., 4));
    } else if (i == 17) {
      levelWin.add(new winBlock(new PVector(width-25, 0), 50., 600.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBooms.add(new BoomBlock(new PVector(0, 0), 20., 1.0 * height, 20));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));

      levelBlocks.add(new Block(new PVector(100, 0), 20., 100.));
      levelBlocks.add(new Block(new PVector(100, 140), 20., 320.));
      levelBlocks.add(new Block(new PVector(100, 500), 20., 100.));   

      levelBooms.add(new BoomBlock(new PVector(200, 0), 20., 90., 2));
      levelBooms.add(new BoomBlock(new PVector(200, 150), 20., 300., 2));
      levelBooms.add(new BoomBlock(new PVector(200, 510), 20., 90., 2));    
      levelBooms.add(new BoomBlock(new PVector(300, 0), 20., 80., 2));
      levelBooms.add(new BoomBlock(new PVector(300, 160), 20., 280., 2));
      levelBooms.add(new BoomBlock(new PVector(300, 520), 20., 80., 2));   
      levelBooms.add(new BoomBlock(new PVector(400, 0), 20., 70., 2));
      levelBooms.add(new BoomBlock(new PVector(400, 170), 20., 260., 2));
      levelBooms.add(new BoomBlock(new PVector(400, 530), 20., 70., 2));   
      levelBooms.add(new BoomBlock(new PVector(500, 0), 20., 60., 2));
      levelBooms.add(new BoomBlock(new PVector(500, 180), 20., 240., 2));
      levelBooms.add(new BoomBlock(new PVector(500, 540), 20., 60., 2));
    } else if (i == 18) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBooms.add(new BoomBlock(new PVector(0, 0), 1.0 * width, 20., 4));
      levelBooms.add(new BoomBlock(new PVector(0, 0), 20., 1.0 * height, 4));
      levelBooms.add(new BoomBlock(new PVector(0, height-20), 1.0 * width, 20., 4));
      levelBooms.add(new BoomBlock(new PVector(width-20, 0), 20., height/2-50., 4));
      levelBooms.add(new BoomBlock(new PVector(width-20, height/2+50), 20., height/2-50., 4));

      levelBlocks.add(new Block(new PVector(0, height/2-10), width - 100., 20.));
      levelBooms.add(new BoomBlock(new PVector(140, 100), 20., 190., 4));
      levelBooms.add(new BoomBlock(new PVector(280, 20), 20., 190., 4));
      levelBooms.add(new BoomBlock(new PVector(420, 100), 20., 190., 4));
      levelBooms.add(new BoomBlock(new PVector(580, 20), 20., 190., 4));
      levelBooms.add(new BoomBlock(new PVector(680, 100), 20., 190., 4));

      levelBooms.add(new BoomBlock(new PVector(140, 310), 20., 190., 4));
      levelBooms.add(new BoomBlock(new PVector(280, 390), 20., 190., 4));
      levelBooms.add(new BoomBlock(new PVector(420, 310), 20., 190., 4));
      levelBooms.add(new BoomBlock(new PVector(580, 390), 20., 190., 4));
      levelBooms.add(new BoomBlock(new PVector(680, 310), 20., 190., 4));
    } else if (i == 19) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBooms.add(new BoomBlock(new PVector(0, 0), 1.0 * width, 20., 4));
      levelBooms.add(new BoomBlock(new PVector(0, 0), 20., 1.0 * height, 4));
      levelBooms.add(new BoomBlock(new PVector(0, height-20), 1.0 * width, 20., 4));
      levelBooms.add(new BoomBlock(new PVector(width-20, 0), 20., height/2-50., 4));
      levelBooms.add(new BoomBlock(new PVector(width-20, height/2+50), 20., height/2-50., 4));

      levelBlocks.add(new Block(new PVector(1.75 * width/3 - 300, 20), 20., 80.));
      levelBlocks.add(new Block(new PVector(2 * width/3 - 250, 80), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.5 * width/3 - 150, 80), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.75 * width/3 - 100, 20), 20., 80.));
      levelBooms.add(new BoomBlock(new PVector(1.75 * width/3 - 300, 140), 20., 80., 4));
      levelBlocks.add(new Block(new PVector(2 * width/3 - 250, 200), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.25 * width/3 - 200, 140), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.5 * width/3 - 150, 200), 20., 80.));
      levelBooms.add(new BoomBlock(new PVector(2.75 * width/3 - 100, 140), 20., 80., 4));
      levelBlocks.add(new Block(new PVector(1.75 * width/3 - 300, 260), 20., 80.));
      levelBlocks.add(new Block(new PVector(2 * width/3 - 250, 320), 20., 80.));
      levelBooms.add(new BoomBlock(new PVector(2.25 * width/3 - 200, 260), 20., 80., 4));
      levelBlocks.add(new Block(new PVector(2.5 * width/3 - 150, 320), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.75 * width/3 - 100, 260), 20., 80.));
      levelBooms.add(new BoomBlock(new PVector(1.75 * width/3 - 300, 380), 20., 80., 4));
      levelBlocks.add(new Block(new PVector(2 * width/3 - 250, 440), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.25 * width/3 - 200, 380), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.5 * width/3 - 150, 440), 20., 80.));
      levelBooms.add(new BoomBlock(new PVector(2.75 * width/3 - 100, 380), 20., 80., 4));
      levelBlocks.add(new Block(new PVector(1.75 * width/3 - 300, 500), 20., 80.));
      levelBlocks.add(new Block(new PVector(2.75 * width/3 - 100, 500), 20., 80.));

      levelBooms.add(new BoomBlock(new PVector(303, 80), 213., 20., 4));
      levelBooms.add(new BoomBlock(new PVector(303, 500), 213., 20., 4));
    } else if (i == 20) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));

      levelZaps.add(new Zap(new PVector(200, 30), new PVector(200, 570), 60., false, 50));
      levelZaps.add(new Zap(new PVector(300, 30), new PVector(300, 570), 60., false, 40));
      levelZaps.add(new Zap(new PVector(400, 30), new PVector(400, 570), 60., false, 30));
      levelZaps.add(new Zap(new PVector(500, 30), new PVector(500, 570), 60., false, 20));
      levelZaps.add(new Zap(new PVector(600, 30), new PVector(600, 570), 60., false, 10));
      levelZaps.add(new Zap(new PVector(700, 30), new PVector(700, 570), 60., true, 0));
    } else if (i == 21) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));

      levelZaps.add(new Zap(new PVector(200, 30), new PVector(200, 570), 90., false, 0));
      levelZaps.add(new Zap(new PVector(300, 30), new PVector(300, 570), 90., true, 0));
      levelZaps.add(new Zap(new PVector(400, 30), new PVector(400, 570), 90., false, 0));
      levelZaps.add(new Zap(new PVector(500, 30), new PVector(500, 570), 90., true, 0));
      levelZaps.add(new Zap(new PVector(600, 30), new PVector(600, 570), 90., false, 0));
      levelZaps.add(new Zap(new PVector(700, 30), new PVector(700, 570), 90., true, 0));
    } else if (i == 22) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));

      levelZaps.add(new Zap(new PVector(200, 30), new PVector(200, 570), 45., false, 0));
      levelZaps.add(new Zap(new PVector(300, 30), new PVector(300, 570), 45., false, 0));
      levelZaps.add(new Zap(new PVector(400, 30), new PVector(400, 570), 45., false, 0));
      levelZaps.add(new Zap(new PVector(500, 30), new PVector(500, 570), 45., false, 0));
      levelZaps.add(new Zap(new PVector(600, 30), new PVector(600, 570), 45., false, 0));
      levelZaps.add(new Zap(new PVector(700, 30), new PVector(700, 570), 45., false, 0));
    } else if (i == 23) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelZaps.add(new Zap(new PVector(10, 10), new PVector(width-10, 10), 0., true, 0));
      levelZaps.add(new Zap(new PVector(10, 10), new PVector(10, height-10), 0., true, 0));
      levelZaps.add(new Zap(new PVector(10, height-10), new PVector(width-10, height-10), 0., true, 0));
      levelZaps.add(new Zap(new PVector(width-10, 10), new PVector(width-10, height/2-60), 0., true, 0));
      levelZaps.add(new Zap(new PVector(width-10, height/2+60), new PVector(width-10, height-10), 0., true, 0));

      levelZaps.add(new Zap(new PVector(110, 110), new PVector(width-110, 110), 0., true, 0));
      levelZaps.add(new Zap(new PVector(110, 110), new PVector(110, height-110), 0., true, 0));
      levelZaps.add(new Zap(new PVector(110, height-110), new PVector(width-110, height-110), 0., true, 0));
      levelZaps.add(new Zap(new PVector(width-110, 110), new PVector(width-110, height-110), 0., true, 0));

      levelZaps.add(new Zap(new PVector(200, 0), new PVector(200, 120), 90., false, 0));
      levelZaps.add(new Zap(new PVector(240, 0), new PVector(240, 120), 90., false, 65));
      levelZaps.add(new Zap(new PVector(280, 0), new PVector(280, 120), 90., false, 40));
      levelZaps.add(new Zap(new PVector(320, 0), new PVector(320, 120), 90., false, 15));
      levelZaps.add(new Zap(new PVector(360, 0), new PVector(360, 120), 90., true, 75));
      levelZaps.add(new Zap(new PVector(400, 0), new PVector(400, 120), 90., true, 50));
      levelZaps.add(new Zap(new PVector(440, 0), new PVector(440, 120), 90., true, 25));
      levelZaps.add(new Zap(new PVector(480, 0), new PVector(480, 120), 90., false, 0));
      levelZaps.add(new Zap(new PVector(520, 0), new PVector(520, 120), 90., false, 65));
      levelZaps.add(new Zap(new PVector(560, 0), new PVector(560, 120), 90., false, 40));
      levelZaps.add(new Zap(new PVector(600, 0), new PVector(600, 120), 90., false, 15));
      levelZaps.add(new Zap(new PVector(640, 0), new PVector(640, 120), 90., true, 80));

      levelZaps.add(new Zap(new PVector(200, 480), new PVector(200, 600), 90., false, 0));
      levelZaps.add(new Zap(new PVector(240, 480), new PVector(240, 600), 90., false, 65));
      levelZaps.add(new Zap(new PVector(280, 480), new PVector(280, 600), 90., false, 40));
      levelZaps.add(new Zap(new PVector(320, 480), new PVector(320, 600), 90., false, 15));
      levelZaps.add(new Zap(new PVector(360, 480), new PVector(360, 600), 90., true, 75));
      levelZaps.add(new Zap(new PVector(400, 480), new PVector(400, 600), 90., true, 50));
      levelZaps.add(new Zap(new PVector(440, 480), new PVector(440, 600), 90., true, 25));
      levelZaps.add(new Zap(new PVector(480, 480), new PVector(480, 600), 90., false, 0));
      levelZaps.add(new Zap(new PVector(520, 480), new PVector(520, 600), 90., false, 65));
      levelZaps.add(new Zap(new PVector(560, 480), new PVector(560, 600), 90., false, 40));
      levelZaps.add(new Zap(new PVector(600, 480), new PVector(600, 600), 90., false, 15));
      levelZaps.add(new Zap(new PVector(640, 480), new PVector(640, 600), 90., true, 80));
    } else if (i == 24) {
      levelWin.add(new winBlock(new PVector(width-25, height - 180), 50., 160.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height - 50.));

      levelBlocks.add(new Block(new PVector(0, 200), 700., 20.));
      levelBlocks.add(new Block(new PVector(100, 400), 700., 20.));

      levelZaps.add(new Zap(new PVector(200, 30), new PVector(200, 190), 45., false, 0));
      levelZaps.add(new Zap(new PVector(240, 30), new PVector(240, 190), 45., false, 35));
      levelZaps.add(new Zap(new PVector(280, 30), new PVector(280, 190), 45., false, 25));
      levelZaps.add(new Zap(new PVector(320, 30), new PVector(320, 190), 45., false, 15));
      levelZaps.add(new Zap(new PVector(360, 30), new PVector(360, 190), 45., false, 5));
      levelZaps.add(new Zap(new PVector(400, 30), new PVector(400, 190), 45., true, 40));
      levelZaps.add(new Zap(new PVector(440, 30), new PVector(440, 190), 45., true, 30));
      levelZaps.add(new Zap(new PVector(480, 30), new PVector(480, 190), 45., true, 20));
      levelZaps.add(new Zap(new PVector(520, 30), new PVector(520, 190), 45., true, 10));
      levelZaps.add(new Zap(new PVector(560, 30), new PVector(560, 190), 45., false, 0));
      levelZaps.add(new Zap(new PVector(600, 30), new PVector(600, 190), 45., false, 35));
      levelZaps.add(new Zap(new PVector(640, 30), new PVector(640, 190), 45., false, 25));

      levelZaps.add(new Zap(new PVector(200, 230), new PVector(200, 390), 45., false, 25));
      levelZaps.add(new Zap(new PVector(240, 230), new PVector(240, 390), 45., false, 35));
      levelZaps.add(new Zap(new PVector(280, 230), new PVector(280, 390), 45., false, 0));
      levelZaps.add(new Zap(new PVector(320, 230), new PVector(320, 390), 45., true, 10));
      levelZaps.add(new Zap(new PVector(360, 230), new PVector(360, 390), 45., true, 20));
      levelZaps.add(new Zap(new PVector(400, 230), new PVector(400, 390), 45., true, 30));
      levelZaps.add(new Zap(new PVector(440, 230), new PVector(440, 390), 45., true, 40));
      levelZaps.add(new Zap(new PVector(480, 230), new PVector(480, 390), 45., false, 5));
      levelZaps.add(new Zap(new PVector(520, 230), new PVector(520, 390), 45., false, 15));
      levelZaps.add(new Zap(new PVector(560, 230), new PVector(560, 390), 45., false, 25));
      levelZaps.add(new Zap(new PVector(600, 230), new PVector(600, 390), 45., false, 35));
      levelZaps.add(new Zap(new PVector(640, 230), new PVector(640, 390), 45., false, 0));

      levelZaps.add(new Zap(new PVector(200, 430), new PVector(200, 570), 45., true, 0));
      levelZaps.add(new Zap(new PVector(240, 430), new PVector(240, 570), 45., true, 35));
      levelZaps.add(new Zap(new PVector(280, 430), new PVector(280, 570), 45., true, 25));
      levelZaps.add(new Zap(new PVector(320, 430), new PVector(320, 570), 45., true, 15));
      levelZaps.add(new Zap(new PVector(360, 430), new PVector(360, 570), 45., true, 5));
      levelZaps.add(new Zap(new PVector(400, 430), new PVector(400, 570), 45., false, 40));
      levelZaps.add(new Zap(new PVector(440, 430), new PVector(440, 570), 45., false, 30));
      levelZaps.add(new Zap(new PVector(480, 430), new PVector(480, 570), 45., false, 20));
      levelZaps.add(new Zap(new PVector(520, 430), new PVector(520, 570), 45., false, 10));
      levelZaps.add(new Zap(new PVector(560, 430), new PVector(560, 570), 45., true, 0));
      levelZaps.add(new Zap(new PVector(600, 430), new PVector(600, 570), 45., true, 35));
      levelZaps.add(new Zap(new PVector(640, 430), new PVector(640, 570), 45., true, 25));
    } else if (i == 25) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));

      levelBlocks.add(new Block(new PVector(0, 0), 200., 240.));
      levelBlocks.add(new Block(new PVector(0, 360), 200., 240.));
      levelBlocks.add(new Block(new PVector(600, 0), 200., 240.));
      levelBlocks.add(new Block(new PVector(600, 360), 200., 240.));
      levelBlocks.add(new Block(new PVector(0, 0), 800., 100.));
      levelBlocks.add(new Block(new PVector(0, 500), 800., 100.));

      levelBooms.add(new BoomBlock(new PVector(400 + sqrt(20000), 0), 400 - sqrt(20000), 300 - sqrt(20000), 4));
      levelBooms.add(new BoomBlock(new PVector(400 + sqrt(20000), 300 + sqrt(20000)), 400 - sqrt(20000), 300 - sqrt(20000), 4));
      levelBooms.add(new BoomBlock(new PVector(0, 0), 400 - sqrt(20000), 300 - sqrt(20000), 4));
      levelBooms.add(new BoomBlock(new PVector(0, 300 + sqrt(20000)), 400 - sqrt(20000), 300 - sqrt(20000), 4));

      levelFuz.add(new FuzBall(new PVector(200, 300), new PVector(600, 300), 4, 6.0));
      levelFuz.add(new FuzBall(new PVector(400, 100), new PVector(400, 500), 4, 6.0));
      levelFuz.add(new FuzBall(new PVector(400 - sqrt(20000), 300 - sqrt(20000)), new PVector(400 + sqrt(20000), 300 + sqrt(20000)), 4, 3.0));
      levelFuz.add(new FuzBall(new PVector(400 + sqrt(20000), 300 - sqrt(20000)), new PVector(400 - sqrt(20000), 300 + sqrt(20000)), 4, 3.0));
      levelFuz.add(new FuzBall(new PVector(600, 300), new PVector(200, 300), 4, 6.0));
      levelFuz.add(new FuzBall(new PVector(400, 500), new PVector(400, 100), 4, 6.0));
      levelFuz.add(new FuzBall(new PVector(400 + sqrt(20000), 300 + sqrt(20000)), new PVector(400 - sqrt(20000), 300 - sqrt(20000)), 4, 3.0));
      levelFuz.add(new FuzBall(new PVector(400 - sqrt(20000), 300 + sqrt(20000)), new PVector(400 + sqrt(20000), 300 - sqrt(20000)), 4, 3.0));

      levelBooms.add(new BoomBlock(new PVector(330, 230), 140., 20., 4));
      levelBooms.add(new BoomBlock(new PVector(330, 230), 20., 140., 4));
      levelBooms.add(new BoomBlock(new PVector(330, 350), 140., 20., 4));
      levelBooms.add(new BoomBlock(new PVector(450, 230), 20., 140., 4));
    } else if (i == 26) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelZaps.add(new Zap(new PVector(10, 10), new PVector(width-10, 10), 0., true, 0));
      levelZaps.add(new Zap(new PVector(10, 10), new PVector(10, height-10), 0., true, 0));
      levelZaps.add(new Zap(new PVector(10, height-10), new PVector(width-10, height-10), 0., true, 0));
      levelZaps.add(new Zap(new PVector(width-10, 10), new PVector(width-10, height/2-60), 0., true, 0));
      levelZaps.add(new Zap(new PVector(width-10, height/2+60), new PVector(width-10, height-10), 0., true, 0));

      levelBooms.add(new BoomBlock(new PVector(100, 100), 600., 20., 4));
      levelBooms.add(new BoomBlock(new PVector(100, 100), 20., 150., 4));
      levelBooms.add(new BoomBlock(new PVector(100, 350), 20., 150., 4));
      levelBooms.add(new BoomBlock(new PVector(100, 480), 350., 20., 4));
      levelBooms.add(new BoomBlock(new PVector(550, 480), 150., 20., 4));
      levelBooms.add(new BoomBlock(new PVector(680, 100), 20., 400., 4));

      levelBooms.add(new BoomBlock(new PVector(280, 200), 320., 20., 4));
      levelBooms.add(new BoomBlock(new PVector(200, 230), 20., 170., 4));
      levelBooms.add(new BoomBlock(new PVector(200, 380), 150., 20., 4));
      levelBooms.add(new BoomBlock(new PVector(450, 380), 150., 20., 4));
      levelBooms.add(new BoomBlock(new PVector(580, 200), 20., 200., 4));

      levelBooms.add(new BoomBlock(new PVector(0, 230), 200., 20., 4));
      levelBooms.add(new BoomBlock(new PVector(0, 350), 100., 20., 4));
      levelBooms.add(new BoomBlock(new PVector(450, 380), 20., 220., 4));
      levelBooms.add(new BoomBlock(new PVector(680, 230), 120., 20., 4));
    } else if (i == 27) {
         levelWin.add(new winBlock(new PVector(width-25, height/2 - 50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));
     
      levelFuz.add(new FuzBall(new PVector(200,50), new PVector(200, 450), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,150), new PVector(200, 550), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,10), new PVector(200, 410), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,190), new PVector(200, 590), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,230), new PVector(200, 630), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,270), new PVector(200, 670), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,310), new PVector(200, 710), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,350), new PVector(200, 750), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,390), new PVector(200, 790), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,430), new PVector(200, 830), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,470), new PVector(200, 870), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,510), new PVector(200, 910), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,550), new PVector(200, 950), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,590), new PVector(200, 990), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,10), new PVector(200, 410), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,-30), new PVector(200, 370), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,-70), new PVector(200, 330), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,-110), new PVector(200, 290), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,-150), new PVector(200, 250), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,-190), new PVector(200, 210), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,-230), new PVector(200, 170), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,-270), new PVector(200, 130), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,-310), new PVector(200, 90), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,-350), new PVector(200, 50), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200,-390), new PVector(200, 10), 2, 3.0));
      
      levelFuz.add(new FuzBall(new PVector(600,50), new PVector(600, 450), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,150), new PVector(600, 550), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,10), new PVector(600, 410), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,190), new PVector(600, 590), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,230), new PVector(600, 630), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,270), new PVector(600, 670), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,310), new PVector(600, 710), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,350), new PVector(600, 750), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,390), new PVector(600, 790), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,430), new PVector(600, 830), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,470), new PVector(600, 870), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,510), new PVector(600, 910), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,550), new PVector(600, 950), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,590), new PVector(600, 990), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,10), new PVector(600, 410), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,-30), new PVector(600, 370), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,-70), new PVector(600, 330), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,-110), new PVector(600, 290), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,-150), new PVector(600, 250), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,-190), new PVector(600, 210), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,-230), new PVector(600, 170), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,-270), new PVector(600, 130), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,-310), new PVector(600, 90), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,-350), new PVector(600, 50), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(600,-390), new PVector(600, 10), 2, 3.0));
      
      
      //levelFuz.add(new FuzBall(new PVector(600,50), new PVector(600, 450), 2, 3.0));
      //levelFuz.add(new FuzBall(new PVector(600,150), new PVector(600, 550), 2, 3.0));
      
      levelFuz.add(new FuzBall(new PVector(400,-100), new PVector(400, 300), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(400,300), new PVector(400, 700), 2, 3.0)); 
      levelFuz.add(new FuzBall(new PVector(440,-70), new PVector(440, 330), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(440,270), new PVector(440, 670), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(360,-70), new PVector(360, 330), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(360,270), new PVector(360, 670), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(480,-40), new PVector(480, 360), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(480,240), new PVector(480, 640), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(320,-40), new PVector(320, 360), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(320,240), new PVector(320, 640), 2, 3.0));    
      levelFuz.add(new FuzBall(new PVector(520,-10), new PVector(520, 390), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(520,210), new PVector(520, 610), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(280,-10), new PVector(280, 390), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(280,210), new PVector(280, 610), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(560,20), new PVector(560, 420), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(560,180), new PVector(560, 580), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(240,20), new PVector(240, 420), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(240,180), new PVector(240, 580), 2, 3.0));
     
      levelFuz.add(new FuzBall(new PVector(400,100), new PVector(400, 500), 2, 15.0));
   
    } else if (i == 28) {
      levelWin.add(new winBlock(new PVector(width-25, 0), 50., 600.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));

      levelBlocks.add(new Block(new PVector(0, 210), 400., 20.));
      levelBlocks.add(new Block(new PVector(0, 370), 400., 20.));
      levelBlocks.add(new Block(new PVector(510, 140), 20., 320.));
      levelBlocks.add(new Block(new PVector(130, 120), 400., 20.));
      levelBlocks.add(new Block(new PVector(130, 460), 400., 20.));

      levelZaps.add(new Zap(new PVector(240, 10), new PVector(240, 130), 45., false, 0));
      levelZaps.add(new Zap(new PVector(280, 10), new PVector(280, 130), 45., false, 0));
      levelZaps.add(new Zap(new PVector(320, 10), new PVector(320, 130), 45., false, 0));
      levelZaps.add(new Zap(new PVector(360, 10), new PVector(360, 130), 45., false, 0));
      levelZaps.add(new Zap(new PVector(400, 10), new PVector(400, 130), 45., false, 0));
      levelZaps.add(new Zap(new PVector(440, 10), new PVector(440, 130), 45., false, 0));
      levelZaps.add(new Zap(new PVector(480, 10), new PVector(480, 130), 45., false, 0));
      levelZaps.add(new Zap(new PVector(520, 10), new PVector(520, 130), 45., false, 0));

      levelZaps.add(new Zap(new PVector(240, 470), new PVector(240, 590), 45., false, 0));
      levelZaps.add(new Zap(new PVector(280, 470), new PVector(280, 590), 45., false, 0));
      levelZaps.add(new Zap(new PVector(320, 470), new PVector(320, 590), 45., false, 0));
      levelZaps.add(new Zap(new PVector(360, 470), new PVector(360, 590), 45., false, 0));
      levelZaps.add(new Zap(new PVector(400, 470), new PVector(400, 590), 45., false, 0));
      levelZaps.add(new Zap(new PVector(440, 470), new PVector(440, 590), 45., false, 0));
      levelZaps.add(new Zap(new PVector(480, 470), new PVector(480, 590), 45., false, 0));
      levelZaps.add(new Zap(new PVector(520, 470), new PVector(520, 590), 45., false, 0));

      levelBooms.add(new BoomBlock(new PVector(20, 20), 20., 190., 10));
      levelBooms.add(new BoomBlock(new PVector(20, 390), 20., 190., 10));

      levelFuz.add(new FuzBall(new PVector(420, 240), new PVector(100, 240), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(100, 300), new PVector(420, 300), 2, 6.0));
      levelFuz.add(new FuzBall(new PVector(420, 360), new PVector(100, 360), 2, 3.0));
    } else if (i == 29) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));

      levelBlocks.add(new Block(new PVector(180, 180), 440., 20.));
      levelBlocks.add(new Block(new PVector(180, 400), 440., 20.));
      levelBlocks.add(new Block(new PVector(180, 0), 20., 180.));
      levelBlocks.add(new Block(new PVector(180, 400), 20., 180.));
      levelBlocks.add(new Block(new PVector(600, 0), 20., 180.));
      levelBlocks.add(new Block(new PVector(600, 400), 20., 180.));

      levelBooms.add(new BoomBlock(new PVector(200, 230), 20., 20., 2));
      levelBooms.add(new BoomBlock(new PVector(200, 290), 20., 20., 2));
      levelBooms.add(new BoomBlock(new PVector(200, 350), 20., 20., 2));
      levelBooms.add(new BoomBlock(new PVector(320, 230), 20., 20., 2));
      levelBooms.add(new BoomBlock(new PVector(320, 290), 20., 20., 2));
      levelBooms.add(new BoomBlock(new PVector(320, 350), 20., 20., 2));
      levelBooms.add(new BoomBlock(new PVector(440, 230), 20., 20., 2));
      levelBooms.add(new BoomBlock(new PVector(440, 290), 20., 20., 2));
      levelBooms.add(new BoomBlock(new PVector(440, 350), 20., 20., 2));
      levelBooms.add(new BoomBlock(new PVector(560, 230), 20., 20., 2));
      levelBooms.add(new BoomBlock(new PVector(560, 290), 20., 20., 2));
      levelBooms.add(new BoomBlock(new PVector(560, 350), 20., 20., 2));


      levelZaps.add(new Zap(new PVector(200, 210), new PVector(600, 210), 90., false, 0));
      levelZaps.add(new Zap(new PVector(200, 270), new PVector(600, 270), 90., false, 0));
      levelZaps.add(new Zap(new PVector(200, 330), new PVector(600, 330), 90., false, 0));
      levelZaps.add(new Zap(new PVector(200, 390), new PVector(600, 390), 90., false, 0));
    } else if (i == 30) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 -50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));

      levelZaps.add(new Zap(new PVector(100, 30), new PVector(100, 570), 60., false, 0));
      levelZaps.add(new Zap(new PVector(200, 30), new PVector(200, 570), 60., false, 0));
      levelZaps.add(new Zap(new PVector(300, 30), new PVector(300, 570), 60., false, 0));
      levelZaps.add(new Zap(new PVector(400, 30), new PVector(400, 570), 60., false, 0));
      levelZaps.add(new Zap(new PVector(500, 30), new PVector(500, 570), 60., false, 0));
      levelZaps.add(new Zap(new PVector(600, 30), new PVector(600, 570), 60., false, 0));

      levelFuz.add(new FuzBall(new PVector(80, 40), new PVector(620, 40), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(80, 80), new PVector(620, 80), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(80, 200), new PVector(620, 200), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(80, 240), new PVector(620, 240), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(80, 360), new PVector(620, 360), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(80, 400), new PVector(620, 400), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(80, 520), new PVector(620, 520), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(80, 560), new PVector(620, 560), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(620, 120), new PVector(80, 120), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(620, 160), new PVector(80, 160), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(620, 280), new PVector(80, 280), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(620, 320), new PVector(80, 320), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(620, 440), new PVector(80, 440), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(620, 480), new PVector(80, 480), 2, 3.0));
    } else if (i == 31) {
      levelWin.add(new winBlock(new PVector(540, 180), 20., 240.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height-20.));

      levelBlocks.add(new Block(new PVector(0, 100), 300., 20.));
      levelBlocks.add(new Block(new PVector(0, height - 120), 300., 20.));
      levelBlocks.add(new Block(new PVector(400, 0), 20., 230.));
      levelBlocks.add(new Block(new PVector(400, 370), 20., 230.));
      levelBlocks.add(new Block(new PVector(150, 210), 250., 20.));
      levelBlocks.add(new Block(new PVector(150, height - 230), 250., 20.));
      levelBlocks.add(new Block(new PVector(520, 160), 20., 280.));
      levelBlocks.add(new Block(new PVector(520, 160), 170., 20.));
      levelBlocks.add(new Block(new PVector(520, 420), 170., 20.));

      levelFuz.add(new FuzBall(new PVector(100, 40), new PVector(380, 40), new PVector(380, 190), new PVector(50, 190), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(100, 80), new PVector(340, 80), new PVector(340, 150), new PVector(50, 150), 1.58, 3.0));
      levelFuz.add(new FuzBall(new PVector(100, 560), new PVector(380, 560), new PVector(380, 410), new PVector(50, 410), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(100, 520), new PVector(340, 520), new PVector(340, 450), new PVector(50, 450), 1.58, 3.0));

      levelZaps.add(new Zap(new PVector(160, 240), new PVector(160, 360), 45., false, 10));
      levelZaps.add(new Zap(new PVector(200, 240), new PVector(200, 360), 45., true, 0));
      levelZaps.add(new Zap(new PVector(240, 240), new PVector(240, 360), 45., true, 35));
      levelZaps.add(new Zap(new PVector(280, 240), new PVector(280, 360), 45., true, 25));
      levelZaps.add(new Zap(new PVector(320, 240), new PVector(320, 360), 45., true, 15));
      levelZaps.add(new Zap(new PVector(360, 240), new PVector(360, 360), 45., true, 5));
      levelZaps.add(new Zap(new PVector(400, 240), new PVector(400, 360), 45., false, 40));

      levelZaps.add(new Zap(new PVector(430, 450), new PVector(770, 450), 145., false, 0));
      levelZaps.add(new Zap(new PVector(430, 490), new PVector(770, 490), 145., false, 0));
      levelZaps.add(new Zap(new PVector(430, 530), new PVector(770, 530), 145., false, 0));
      levelZaps.add(new Zap(new PVector(430, 570), new PVector(770, 570), 145., false, 0));

      levelZaps.add(new Zap(new PVector(430, 150), new PVector(770, 150), 145., false, 0));
      levelZaps.add(new Zap(new PVector(430, 110), new PVector(770, 110), 145., false, 0));
      levelZaps.add(new Zap(new PVector(430, 70), new PVector(770, 70), 145., false, 0));
      levelZaps.add(new Zap(new PVector(430, 30), new PVector(770, 30), 145., false, 0));
    } else if (i == 32) {
      levelWin.add(new winBlock(new PVector(620, 20), 160., 20.));
      levelWin.add(new winBlock(new PVector(620, 560), 160., 20.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height-20.));

      levelBlocks.add(new Block(new PVector(0, 140), 500., 20.));
      levelBlocks.add(new Block(new PVector(0, height - 160), 500., 20.));
      levelBlocks.add(new Block(new PVector(600, 0), 20., 260.));
      levelBlocks.add(new Block(new PVector(600, 340), 20., 260.));

      levelBooms.add(new BoomBlock(new PVector(100, 260), 520., 20., 4));
      levelBooms.add(new BoomBlock(new PVector(100, height - 280), 520., 20., 4));

      levelZaps.add(new Zap(new PVector(140, 150), new PVector(140, 268), 45., false, 35));
      levelZaps.add(new Zap(new PVector(180, 150), new PVector(180, 268), 45., false, 0));
      levelZaps.add(new Zap(new PVector(220, 150), new PVector(220, 268), 45., true, 10));
      levelZaps.add(new Zap(new PVector(260, 150), new PVector(260, 268), 45., true, 20));
      levelZaps.add(new Zap(new PVector(300, 150), new PVector(300, 268), 45., true, 30));
      levelZaps.add(new Zap(new PVector(340, 150), new PVector(340, 268), 45., true, 40));
      levelZaps.add(new Zap(new PVector(380, 150), new PVector(380, 268), 45., false, 5));
      levelZaps.add(new Zap(new PVector(420, 150), new PVector(420, 268), 45., false, 15));
      levelZaps.add(new Zap(new PVector(460, 150), new PVector(460, 268), 45., false, 25));

      levelZaps.add(new Zap(new PVector(140, 332), new PVector(140, 450), 45., true, 35));
      levelZaps.add(new Zap(new PVector(180, 332), new PVector(180, 450), 45., true, 0));
      levelZaps.add(new Zap(new PVector(220, 332), new PVector(220, 450), 45., false, 10));
      levelZaps.add(new Zap(new PVector(260, 332), new PVector(260, 450), 45., false, 20));
      levelZaps.add(new Zap(new PVector(300, 332), new PVector(300, 450), 45., false, 30));
      levelZaps.add(new Zap(new PVector(340, 332), new PVector(340, 450), 45., false, 40));
      levelZaps.add(new Zap(new PVector(380, 332), new PVector(380, 450), 45., true, 5));
      levelZaps.add(new Zap(new PVector(420, 332), new PVector(420, 450), 45., true, 15));
      levelZaps.add(new Zap(new PVector(460, 332), new PVector(460, 450), 45., true, 25));

      levelFuz.add(new FuzBall(new PVector(100, 30), new PVector(200, 130), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200, 30), new PVector(100, 130), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(240, 130), new PVector(340, 30), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(340, 130), new PVector(240, 30), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(380, 30), new PVector(480, 130), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(480, 30), new PVector(380, 130), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(520, 130), new PVector(570, 80), new PVector(520, 30), 2, 3.0));

      levelFuz.add(new FuzBall(new PVector(100, 570), new PVector(200, 470), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(200, 570), new PVector(100, 470), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(240, 470), new PVector(340, 570), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(340, 470), new PVector(240, 570), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(380, 570), new PVector(480, 470), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(480, 570), new PVector(380, 470), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(520, 470), new PVector(570, 520), new PVector(520, 570), 2, 3.0));
    } else if (i == 33) {
      levelWin.add(new winBlock(new PVector(530, height/2 -80), 50., 160.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height - 0.));

      levelBlocks.add(new Block(new PVector(100, 100), 600., 20.));
      levelBlocks.add(new Block(new PVector(100, 100), 20., 400.));
      levelBlocks.add(new Block(new PVector(100, 480), 600., 20.));

      levelBlocks.add(new Block(new PVector(200, 200), 400., 20.));
      levelBlocks.add(new Block(new PVector(580, 200), 20., 200.));
      levelBlocks.add(new Block(new PVector(200, 380), 400., 20.));

      levelZaps.add(new Zap(new PVector(100, 30), new PVector(100, 570), 45., false, 0));
      levelZaps.add(new Zap(new PVector(200, 30), new PVector(200, 570), 45., false, 0));
      levelZaps.add(new Zap(new PVector(300, 30), new PVector(300, 570), 45., false, 0));
      levelZaps.add(new Zap(new PVector(400, 30), new PVector(400, 570), 45., false, 0));
      levelZaps.add(new Zap(new PVector(500, 30), new PVector(500, 570), 45., false, 0));
      levelZaps.add(new Zap(new PVector(600, 30), new PVector(600, 570), 45., false, 0));
      levelZaps.add(new Zap(new PVector(700, 30), new PVector(700, 570), 45., false, 0));

      levelFuz.add(new FuzBall(new PVector(150, 150), new PVector(150, 450), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(650, 150), new PVector(650, 450), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(750, 550), new PVector(750, 50), 10/3., 3.0));
      
    } else if (i == 34) {
     levelWin.add(new winBlock(new PVector(20, 310), 20., 270.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height * 1.));
      
      levelZaps.add(new Zap(new PVector(30, 300), new PVector(400, 300), 0., true, 0));
      levelZaps.add(new Zap(new PVector(400, 30), new PVector(400, 300), 45., false, 0));
      levelZaps.add(new Zap(new PVector(400, 300), new PVector(770, 300), 45., false, 0));
      levelZaps.add(new Zap(new PVector(400, 300), new PVector(400, 570), 45., false, 0));
     
      levelZaps.add(new Zap(new PVector(420, 150), new PVector(600, 150), 45., true, 0));
      levelZaps.add(new Zap(new PVector(600, 30), new PVector(600, 150), 45., true, 22));
      levelZaps.add(new Zap(new PVector(600, 150), new PVector(770, 150), 45., false, 0));
      levelZaps.add(new Zap(new PVector(600, 150), new PVector(600, 270), 45., false, 22));
      
      levelZaps.add(new Zap(new PVector(60, 320), new PVector(60, 570), 45., false, 25));
      levelZaps.add(new Zap(new PVector(100, 320), new PVector(100, 570), 45., false, 35));
      levelZaps.add(new Zap(new PVector(140, 320), new PVector(140, 570), 45., false, 0));
      levelZaps.add(new Zap(new PVector(180, 320), new PVector(180, 570), 45., true, 10));
      levelZaps.add(new Zap(new PVector(220, 320), new PVector(220, 570), 45., true, 20));
      levelZaps.add(new Zap(new PVector(260, 320), new PVector(260, 570), 45., true, 30));
      levelZaps.add(new Zap(new PVector(300, 320), new PVector(300, 570), 45., true, 40));
      
      levelBooms.add(new BoomBlock(new PVector(420, 170), 160., 20., 4));
      levelBooms.add(new BoomBlock(new PVector(560, 170), 20., 110., 4));
      levelBooms.add(new BoomBlock(new PVector(420, 170), 20., 110., 4));
      levelBooms.add(new BoomBlock(new PVector(420, 410), 160., 20., 4));
      levelBooms.add(new BoomBlock(new PVector(560, 320), 20., 110., 4));
      levelBooms.add(new BoomBlock(new PVector(420, 320), 20., 110., 4));
      
      levelFuz.add(new FuzBall(new PVector(140,60), new PVector(140, 240), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(140,240), new PVector(320, 240), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(320,240), new PVector(320, 60), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(320,60), new PVector(140, 60), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(140,240), new PVector(140, 60), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(320,240), new PVector(140, 240), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(320,60), new PVector(320, 240), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(140,60), new PVector(320, 60), 2, 3.0));
      
      levelFuz.add(new FuzBall(new PVector(760,320), new PVector(600, 360), new PVector(760, 400), new PVector(600, 450), new PVector(770, 570), 2, 3.0));
      levelFuz.add(new FuzBall(new PVector(770,570), new PVector(600, 450), new PVector(760, 400), new PVector(600, 360), new PVector(760, 320), 2, 3.0));
      
      
    } else if (i == 35) {
      levelWin.add(new winBlock(new PVector(width-25, height/2 - 50), 50., 100.));

      levelBlocks.add(new Block(new PVector(0, 0), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(0, 0), 20., 1.0 * height));
      levelBlocks.add(new Block(new PVector(0, height-20), 1.0 * width, 20.));
      levelBlocks.add(new Block(new PVector(width-20, 0), 20., height/2-50.));
      levelBlocks.add(new Block(new PVector(width-20, height/2+50), 20., height/2-50.));
      
      levelBlocks.add(new Block(new PVector(100, 0), 20., 500.));      
      levelBlocks.add(new Block(new PVector(200, 100), 20., 180.));      
      levelBlocks.add(new Block(new PVector(300, 0), 20., 160.));      
      levelBlocks.add(new Block(new PVector(680, 140), 20., 260.));      
      levelBlocks.add(new Block(new PVector(320, 280), 20., 180.));      
      levelBlocks.add(new Block(new PVector(580, 280), 20., 220.));      
      levelBlocks.add(new Block(new PVector(200, 400), 20., 200.));
      levelBlocks.add(new Block(new PVector(380, 540), 20., 60.));
      
      levelBlocks.add(new Block(new PVector(200, 280), 260., 20.));
      levelBlocks.add(new Block(new PVector(300, 140), 100., 20.));
      levelBlocks.add(new Block(new PVector(460, 140), 240., 20.));
      levelBlocks.add(new Block(new PVector(460, 440), 120., 20.));
      levelBlocks.add(new Block(new PVector(580, 480), 120., 20.));
      levelBlocks.add(new Block(new PVector(680, 380), 120., 20.));
      
      
    }
  }


  Level(PVector loc1, PVector loc2, int lev) {
    levelNum = lev;
    P1StartPos = loc1;
    P2StartPos = loc2;
    addObsticles(lev);
    if (levelZaps.size() != 0) {
      electOn = true;
    }
    if (levelSaws.size() != 0) {
      sawOn = true;
    }
  }
}
