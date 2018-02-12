// Examples from OpenSCAD manual
//
//rotate([90,0,0])
//  polygon( points = [[0,0],[2,1],[1,2],[1,3],[3,4],[0,5]] );
//
//rotate_extrude($fn = 200)
//  polygon( points = [[0,0],[2,1],[1,2],[1,3],[3,4],[0,5]] );
//
//linear_extrude(height = 10, center = true, convexity = 10, twist = 360)
//  translate([2, 0, 0])
//  circle(r = 2);

// Torus (donut)
//
//rotate_extrude($fn=200)
//  translate([20, 0, 0])
//  circle(r=10);
  
rotate_extrude($fn=200)
  difference() {
    union() {
      translate([10, 0, 0])
      square([60, 200]);
      translate([40, 40, 0])
        circle(r = 40);
      translate([40, 160, 0])
        circle(r = 40);
    }
    translate([-10, 100, 0])
      circle(r = 40);
    translate([90, 100, 0])
      circle(r = 40);
  }