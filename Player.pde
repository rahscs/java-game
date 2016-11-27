class Player extends LivingBeing {

  boolean hurt = false;

  public Player() {
    super(0, 120, "person_ready");
  }

  public void loop() {
    image(img, x, y);
    if(hurt) {
      text("Ouch", x, y);
      hurt = false;
    }
  }
}