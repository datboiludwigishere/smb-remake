import ddf.minim.*;

Player player;
ArrayList<Tile> tiles;
PImage tileText;

float acc = 0.05;
float msp = 4;
float hsp = 0;
float vsp = 0;

int w;
int h;
int gridSize = 32;
int cols = width/32;
int rows = height/32;

void setup() {
  size(512, 480);
  
  player = new Player();
  
  tileText = loadImage("textures/tile/grtile.png");
  tiles = new ArrayList<Tile>();
  for(int i = 0; i < 32; i++) {
    tiles.add(new Tile(tileText));
  }
  
  w = width/2;
  h = height/2;
}

void draw() {
  background(100, 130, 255);
  
  //drawGrid();
  player.display();
  player.x += hsp;
  
  if(hsp > msp) {
    hsp = msp;
  } else if(hsp < -msp) {
    hsp = -msp;
  }
  
  if(keyPressed) {
    if(keyCode == LEFT) {
      hsp -= acc;
    } else if(keyCode == RIGHT) {
      hsp += acc;
    }
  }
  
  for(int i = 0; i < tiles.size(); i++) {
    Tile tile = (Tile) tiles.get(i);
    tile.display(i*gridSize, 13*32);
  }
  
  for(int i = 16; i < tiles.size(); i++) {
    Tile tile = (Tile) tiles.get(i);
    tile.display(i*gridSize, 14*32);
  }
}

void drawGrid() {
  for(int y = 0; y < 15; y++) {
    for(int x = 0; x < 16; x++) {
      noFill();
      stroke(0);
      rect(x*gridSize, y*gridSize, gridSize, gridSize);
    }
  }
}

void keyReleased() {
  
}
