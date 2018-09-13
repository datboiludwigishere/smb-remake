class Player {
  PImage texture = loadImage("textures/mario/right/mario_idle.png");
  int x = 32*3;
  int y = 32*12;
  
  void display() {
    image(texture, x, y, 32, 32);
  }
}

class AnimationWalk extends Player{
  PImage[] aniFrames;
  int frame;
}
