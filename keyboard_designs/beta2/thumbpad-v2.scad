include <pins.scad>
include <squarebuttonmount.scad>

$fn=50;

module two_pinholes() {

 pinhole();
 translate(v=[15,0,0]) pinhole();
}

module thumbpad() {

difference(){

  // describe shape
  linear_extrude(height = 26, center = true, convexity = 10)
  polygon([[0,0],[16,0],[72,31],[70,32.5],[16,5],[16,10],[0,10]]); 

  // mounting holes, connects to rightrack
  translate(v=[7,10,7.5]) rotate(a=[90,86,0]) two_pinholes();

  // buttonholes
  translate(v=[20,7.15,-8])  rotate(a=[90,0,26.8]) squarebuttonmount_positive();
  translate(v=[37,16,-8])  rotate(a=[90,0,26.8]) squarebuttonmount_positive();
  translate(v=[54,24.45,-8])  rotate(a=[90,0,26.8]) squarebuttonmount_positive();

  // semi design :)
  //translate(v=[12,0,12]) rotate(a=[0,15,0]) cube(size=[50,15,15]);


}

}

thumbpad();