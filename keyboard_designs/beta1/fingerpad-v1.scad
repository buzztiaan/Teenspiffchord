include <pins.scad>

module two_pins() {

 pin();
 translate(v=[15,0,0]) pin();
}

module fingerpad() {

 difference() {
  linear_extrude(height = 3, center = true, convexity = 10)
  polygon([[0,0],[10,0],[10,35],[66,65],[108,68],[108,13],[118,13],[118,88],[66,88],[0,55]]); 

  translate(v=[20,52,-2.5]) cylinder(h=5,r=3.75);
  translate(v=[39,63,-2.5]) cylinder(h=5,r=3.75);
  translate(v=[59,73,-2.5]) cylinder(h=5,r=3.75);
  translate(v=[84,77,-2.5]) cylinder(h=5,r=3.75);

 }

 rotate(a=[0,0,90]) translate(v=[5,-5,1.45]) two_pins();  
 rotate(a=[0,0,90]) translate(v=[23,-113,1.45]) two_pins();  
}

mirror([1, 0, 0 ]) fingerpad();