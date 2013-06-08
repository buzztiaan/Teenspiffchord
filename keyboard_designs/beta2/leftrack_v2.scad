include <pins.scad>

module left_rack() {

 difference() {
  linear_extrude(height = 12, center = true, convexity = 10)
  polygon([[0,0],[42,0],[114,31],[150,31],[150,45],[114,41],[42,10],[0,10]]);
 
  rotate(a=[0,90,90]) translate(v=[0,-7,0]) pinhole();
  rotate(a=[0,90,90]) translate(v=[0,-22,0]) pinhole();

  linear_extrude(height = 5, center = true, convexity = 10)
  polygon([[33,3],[42,3],[109,31],[105,35],[42,7],[35,7]]);
 
  translate(v=[34,-0.05,-3]) cube(6);
  translate(v=[105,25.05,-3]) rotate([0,0,23]) cube(6);


  translate(v=[ 110,33,-6]) rotate(a=[0,0,10]) cube(size=[21,3,14]);

 }

 translate(v=[154.95,38,-6]) rotate(a=[0,0,90]) pin(side=true);
 
}

left_rack();