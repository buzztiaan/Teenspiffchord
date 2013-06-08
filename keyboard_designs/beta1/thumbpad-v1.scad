include <pins.scad>

$fn=50;

module two_pinholes() {

 pinhole();
 translate(v=[15,0,0]) pinhole();
}

module thumbpad() {

difference(){

  // describe shape
  linear_extrude(height = 26, center = true, convexity = 10)
  polygon([[0,0],[12,0],[52,10],[51,13],[12,3],[12,10],[0,10]]); 

  // mounting holes, connects to rightrack
  translate(v=[7,10,7.5]) rotate(a=[90,90,0]) two_pinholes();

  // buttonholes
  translate(v=[20,6,3])  rotate(a=[90,0,17]) cylinder(h=6,r=3.75);
  translate(v=[32,9,0])  rotate(a=[90,0,17]) cylinder(h=6,r=3.75);
  translate(v=[44,12,-4])  rotate(a=[90,0,17]) cylinder(h=6,r=3.75);

  // semi design :)
  translate(v=[12,0,12]) rotate(a=[0,15,0]) cube(size=[50,15,15]);


}

}

thumbpad();