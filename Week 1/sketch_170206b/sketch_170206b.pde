float myNumber;
float someValue;

void setup() {
  someValue = 59;
  
  //myNumber = sqrt(4);
  myNumber = sq(4);
  myNumber = square(6);
  
  print(myNumber);
}

//void = null (vacuum)
//an example of a function that returns nothing
void wasteTime(float howManyMinutes) {
  //wait(howManyMunutes);
}

float square(float bob) {
  //multiply that number by itself
  return bob * bob;
}

void draw() {
  noStroke();
  ellipse(30, 50, 10, 20);
}