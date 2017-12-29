int yellowBlinkTimeStamp = 0;
boolean yellowBlinkState = true;

void emergencyMode() {

  if (yellowBlinkState == true) {
    fill(YELLOW);
    ellipse(width/2, height/2, 75, 75);
  }
  
  
  if (millis() - yellowBlinkTimeStamp > 1000) {
    yellowBlinkState = !yellowBlinkState;
    yellowBlinkTimeStamp = millis();
  }
  
}