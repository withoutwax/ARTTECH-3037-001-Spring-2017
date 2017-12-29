String name = "JacobTonski";
ArrayList<Shape> ListOfShapes;

void setup() {
  size(400, 400);
  String s =name.substring(2);
  println(s);
  println(name.length());
  
  //Like a search engine, it fines the relevant value and returns where the value could be found.
  println(name.indexOf("cob"));
}


void draw() {
  
}

void keyPressed() {
  int keyValue = key;
  println(keyValue);
}