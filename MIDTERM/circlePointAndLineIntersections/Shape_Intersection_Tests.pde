
// IF YOU WANT THESE FUNCTIONS TO WORK PROPERLY, BEST NOT TO CHANGE THEM!!!  :)  
// (Just use them as they are and pass the right parameters to them)


//------------------------------------------------------------------------------------------------------------
//a simple test to see if a point lies inside a circle
//(if the point is less than Radius away from the circle center)
boolean pointIsInCircle(float px, float py, float cx, float cy, float cRad) {
  return (dist(px, py, cx, cy) <= cRad); 
}

//------------------------------------------------------------------------------------------------------------
//an imperfect but sufficient circle-line intersection test:
//break the line up into points about 1 pixel apart and test each point for circle intersection
boolean lineCircleIntersectionTest(float x1, float y1, float x2, float y2, float cx, float cy, float cRad) {
  int numPoints = int(dist(x1, y1, x2, y2));
  for (int i=0; i < numPoints; i++) {
    float xt = lerp(x1, x2, i/float(numPoints-1));
    float yt = lerp(y1, y2, i/float(numPoints-1));
    if (pointIsInCircle(xt, yt, cx, cy, cRad)) {return true;}
  }
  //if we get here in the function, we did NOT return true for any point.
  //so return false instead
  return false;
}


//------------------------------------------------------------------------------------------------------------
//test two circles for intersection, defined by center x/y & radius for each 
boolean circleToCircleIntersectionTest(float x1, float y1, float r1, float x2, float y2, float r2) {
  return dist(x1, y1, x2, y2) <= (r1 + r2);
}

//------------------------------------------------------------------------------------------------------------
// Returns true if the lines intersect, otherwise false. 
// If the lines intersect the intersection point is stored in 
// the x,y values of the PVector you pass a reference to.
// If the lines do not intersect, the x,y values of the result PVector
// will not be changed.
// from http://stackoverflow.com/questions/563198/how-do-you-detect-where-two-line-segments-intersect
// Note that the derivation for this method is in a paper referenced in the above linked forum discussion.
// It would be quite difficult to read the code below and make sense of how it works on its own.
boolean calculateLineIntersection(float p0_x, float p0_y, float p1_x, float p1_y, 
  float p2_x, float p2_y, float p3_x, float p3_y, PVector result)
{
  float s1_x, s1_y, s2_x, s2_y;
  s1_x = p1_x - p0_x;     
  s1_y = p1_y - p0_y;
  s2_x = p3_x - p2_x;     
  s2_y = p3_y - p2_y;

  float s, t;
  s = (-s1_y * (p0_x - p2_x) + s1_x * (p0_y - p2_y)) / (-s2_x * s1_y + s1_x * s2_y);
  t = ( s2_x * (p0_y - p2_y) - s2_y * (p0_x - p2_x)) / (-s2_x * s1_y + s1_x * s2_y);

  if (s >= 0 && s <= 1 && t >= 0 && t <= 1)
  {
    // Collision detected
    if (result != null) {
      result.x = p0_x + (t * s1_x);        
      result.y = p0_y + (t * s1_y);
    }
    return true;
  }

  return false; // No collision
}

//------------------------------------------------------------------------------------------------------------