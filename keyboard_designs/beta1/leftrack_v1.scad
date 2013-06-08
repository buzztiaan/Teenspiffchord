include <pins.scad>

module left_rack() {

 difference() {
  linear_extrude(height = 12, center = true, convexity = 10)
  polygon([[0,0],[42,0],[114,31],[180,31],[180,45],[114,41],[42,10],[0,10]]);
 
  rotate(a=[0,90,90]) translate(v=[0,-7,0]) pinhole();
  rotate(a=[0,90,90]) translate(v=[0,-22,0]) pinhole();

  translate(v=[170,38,6]) rotate(a=[180,0,0]) pinhole();
  translate(v=[155,38,6]) rotate(a=[180,0,0]) pinhole();

 }
}

left_rack();