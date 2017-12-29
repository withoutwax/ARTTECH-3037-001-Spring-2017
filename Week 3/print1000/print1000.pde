void setup() {
  //for (initial setup; test; increment)
  for (int loopCounter = 0; loopCounter < 15; loopCounter++) {
    println(loopCounter * 5);
  }
}

void draw() {
}

void keyPressed () {
  
  if (key == 'n') {
    
    int numberCounter = 0;
      
      while (numberCounter < 1001) {
        println(numberCounter);
        numberCounter++;
    }
  }
}