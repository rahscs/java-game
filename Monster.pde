class Monster extends LivingBeing {

  boolean right = false;

  public Monster() {
    super(0, 0, "giant");
  }

  public void loop(Player player) {
    if(right) {
      if(x > 500) right = false;
      x+=2;
    }else{
      if(x < 50) right = true;
      x-=2;
    }
    if(player.x > x - 100 && player.x < x + 100 &&
      player.y > y - 100 && player.y < y + 100)
    {
      player.hurt = true;
    }
    image(img, x, y);
  }
}