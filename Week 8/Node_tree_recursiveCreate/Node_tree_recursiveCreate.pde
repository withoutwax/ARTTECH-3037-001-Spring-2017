Node top;

void setup() {
  fullScreen();
  top = new Node(null);
  //top.children.add(new Node(top));
  //top.children.add(new Node(top));
  
  //create children two levels deep
addNewChild(top, 2, 4, 4);
 
}

//create a new Node and add it as a child to the Node passed as a parameter
void addNewChild(Node n, int howManyChildren, int depth, float thick) {
  if (depth < 1) return;
  for (int i = 0; i < howManyChildren; i++) {
    Node a = new Node(n);
    a.angle = random(-30, 30);
    a.length = random(40, 120);
    a.thickness = thick;
    n.children.add(a);
    addNewChild(a, howManyChildren, depth-1, thick* .75);
  }
}


void draw() {
  
  background(90);
  translate(width/2, height *.9);
  top.render();
}