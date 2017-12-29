Node top;

void setup() {
  size(800, 800);
  top = new Node(null);
  top.length = 100;

  //create children two levels deep
  addNewChild(top, 2, 8, 4);
}

//create a new Node and add it as a child to the Node passed as a parameter
void addNewChild(Node n, int howManyChildren, int depth, float thick) {
  if (depth < 1) return;
  for (int i=0; i< howManyChildren; i++) {
    Node a = new Node(n);
    a.setHomeAngle(random(-20, 20));
    a.length = random(20, 60);
    a.thickness = thick;
    n.children.add(a);
    addNewChild(a, howManyChildren, depth-1, thick * .75);
  }
}

void draw() {
  
  background(0);
  translate(width/2, height * .9);
  float windForce = noise(frameCount/100.0); // mouseX / float(width);
  top.windRecursive( windForce );
  top.render();
}