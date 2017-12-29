void streetLight() {
  int timeNow = millis();
  
  timeInState = timeNow - timestamp;
  
  ellipse(width/2, height/2, 75, 75);
  
  if (state == "r") {
    fill(RED);  
    if (timeInState > 4000) {
      state = "g";
      timestamp = millis();
    }
  }
  else if (state == "g") {
    fill(GREEN);
    if (timeInState > 3000) {
      state = "y";
      timestamp = millis();
    }
  }
  else if (state == "y") {
    fill(YELLOW);
    if (timeInState > 1500) {
      state = "r";
      timestamp = millis();
    }
  }
}