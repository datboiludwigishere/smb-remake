class Tile {
  PImage texture;
  
  Tile(PImage itexture) {
    
    texture = itexture;
  }
  
  void display(float x, float y) {
    image(texture, x, y, 32, 64);
  }
}
