void enterRedState() {
  state = "r";
  timestamp = millis(); //remember what time we entered the state
}

void enterGreenState() {
  state = "g";
  timestamp = millis(); //remember what time we entered the state
}

void enterYellowState() {
  state = "y";
  timestamp = millis(); //remember what time we entered the state
}