include <pins.scad>
include <squarebuttonmount.scad>

module two_pins() {

 pin();
 translate(v=[15,0,0]) pin();
}

module cylinderbuttonmount() {

 cylinder(h=5,r=3.75);

}

module fingerpad() {


 difference() {
 union() {
  linear_extrude(height = 3, center = true, convexity = 10)
  polygon([[0,0],[12,0],[12,20],[50,50],[106,64],[106,44],[118,44],[118,97],[45,90],[0,55]]); 

 translate(v=[0,0,0]) cube(size=[12,20,12]);
 translate(v=[0,0,0]) cube(size=[3,55,5]);
 translate(v=[106,44,0]) cube(size=[12,24,12]);
 translate(v=[115,44,0]) cube(size=[3,53,5]);
 }

  translate(v=[14,42,-1.8]) squarebuttonmount_positive();
  translate(v=[37,61,-1.8]) squarebuttonmount_positive();
  translate(v=[60,70,-1.8]) squarebuttonmount_positive();
  translate(v=[84,73,-1.8]) squarebuttonmount_positive();
  translate(v=[6,0,5]) rotate(a=[-90,90,0]) pinhole();
  translate(v=[112,44,5]) rotate(a=[-90,90,0]) pinhole();

 }

}

fingerpad();