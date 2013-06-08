include <pins.scad>

module two_pins() {

 pin(side=true);
 translate(v=[15,0,0]) pin(side=true);
}

module right_rack() {

 difference() {

  linear_extrude(height = 12, center = true, convexity = 10)
  polygon([[0,0],[33,0],[78,-22],[166,0],[194,-7],[194,10],[166,10],[78,-12],[33,10],[0,10]]); 

 linear_extrude(height = 5, center = true, convexity = 10)
  polygon([[36,0],[78,-19],[137,-4],[137,1],[78,-15],[36,5]]); 

  rotate(a=[0,90,-90]) translate(v=[0,7,-10]) pinhole();
  rotate(a=[0,90,-90]) translate(v=[0,22,-10]) pinhole();

//  translate(v=[188,4,6]) rotate(a=[180,0,0]) pinhole();
//  translate(v=[173,4,6]) rotate(a=[180,0,0]) pinhole();

  translate(v=[ 140,-2.5,-6]) rotate(a=[0,0,10]) cube(size=[21,3,14]);

 translate(v=[ 132,-2,-3])  cube(6);
 translate(v=[ 35,3,-3])  cube(6);


 }

 translate(v=[198.95,5,-6]) rotate(a=[0,0,90]) pin(side=true);

 translate(v=[173,-6.5,-6]) rotate(a=[0,0,-14]) two_pins();


}


right_rack();