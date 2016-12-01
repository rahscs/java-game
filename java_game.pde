Player player;
Monster monster;
World world;
int loading = 2;
private PImage logo;

void setup() {
  size(960, 540);
  logo = loadImage("rahscs_logo.png");
}

// This function runs when the game starts up.  Create objects in here.
private void on_init() {
  // Initialize objects
  player = new Player();
  monster = new Monster();
  world = new World();
}

// This function runs whenever a key is pressed - input is handled here
public void keyPressed() {
  if(key == CODED) {
    if(keyCode == UP)
      player.y -= 5;
    else if (keyCode == DOWN)
      player.y += 5;
    else if (keyCode == RIGHT)
      player.x += 5;
    else if (keyCode == LEFT)
      player.x -= 5;
  }
}

// This function runs every frame-game logic & rendering happens in here
private void on_frame() {
  world.loop();
  monster.loop(player);
  player.loop();
}

void draw() {
  background(0);
  switch(loading) {
    case 0:
      textSize(32);
      background(0,127,0);
      on_frame();
      break;
    case 1:
      on_init();
    default:
      float ih = width * 0.5625f;
      background(127,127,255);
      image(logo, 0, (height - ih) / 2.0f, width, ih);
      loading--;
  }
}