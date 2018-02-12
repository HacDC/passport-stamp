// HacDC passport stamp handle
// Designed by Kevin Cole <dc.loco@gmail.com> 2018.02.10
//

rotate_extrude($fn=200)
union() {
  difference() {
    square([120, 30]);
    square([110, 20]);
  }
  translate([0, 30, 0])
  difference() {
    union() {
      square([80, 190]);
      translate([0, 182.62, 0])
        square([65,20]);
      translate([60, 163, 0])
        circle(r = 40);
    }
    translate([120, 100, 0])
      circle(r = 60);
  }
}
