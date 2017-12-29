void renderRedLight() {
  fill(RED);
  ellipse(width/2, height/2 - 120, 100, 100);
}

void renderGreenLight() {
  fill(GREEN);
  ellipse(width/2, height/2 + 120, 100, 100);
}

void renderYellowLight() {
  fill(YELLOW);
  ellipse(width/2, height/2, 100, 100);
}