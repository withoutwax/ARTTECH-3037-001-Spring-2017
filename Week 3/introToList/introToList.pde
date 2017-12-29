//for many different pieces of text, I could do this:
//String userName1;
//String userName2;
//String userName3;

//for many objects of type student, I could this:
//Student paul;
//Student jill;
//...


String[] classList = {
  "Paul",
  "Jill",
  "Sunday",
  "Minnie",
  "Peng",
  "Valentia",
  "Terrence",
  "Minli",
  "Tony",
  "Will",
  "Logan",
  "Yang",
  "Tristan",
  "Vi",
  "Ali",
  "Nihat",
  "Jacob" };
  
String[] listOfStudents;

void setup() {
  //one way to initilalize a list: (with empty elements)
  listOfStudents = new String[17];
  
  //assign values to indifidual elements in the list:
  listOfStudents[0] = "Paul";
  listOfStudents[1] = "Jill";
  listOfStudents[13] = "Jacob"; //although it say 13, this is 14th item in the list. [0-(n-1)]
}
  //or, there's a shortcut to assign everything at once;
  
  
void draw() {

}



void keyPressed() {
  if (key == ' ') {
    //print out all the names;
    int listCounter = 0;//local variable = only accessible inside the function.
    
    while (listCounter < classList.length) { //classList.length runs the function until the number of names are reached
      //do this
      println(classList[listCounter]);
      listCounter++; //increments the listCounter by 1 | lustCounter = listCounter + 1;      
    } //otherwise, it it was false, continue runnign code just below:
    
    println("THE END");
    
    
  }
}