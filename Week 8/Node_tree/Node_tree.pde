Node top;

void setup() {
  fullScreen();
  top = new Node(null);
  top.children.add(new Node(top));
  top.children.add(new Node(top));
  
  for (int i = 0; i < 4; i++) {
    Node newChild = addnewChild(top);
    for (int j = 0; j < 3; j++) {
      Node childsChild = addnewChild(newChild);
    }
  }
 
}

//create a new Node and add it as a child to the Node passed as a parameter
Node addnewChild(Node n) {
    Node a = new Node(n);
    a.angle = random(-30, 30);
    a.length = random(40, 120);
    n.children.add(a);
    return a;
}


void draw() {
  
  background(90);
  translate(width/2, height *.9);
  top.render();
}