include <pins.scad>
include <squarebuttonmount.scad>

$fn=50;
 strapwidth = 28;
 wristwidth = 65;

module thumbpad() {
difference(){
  linear_extrude(height = 26, center = true, convexity = 10)
  polygon([[0,0],[16,0],[72,31],[70,37],[16,10],[0,10]]); 
 translate([8,0,-11])rotate([0,0,28]) translate([12.5,0,0])cube([58,6,22]);
  translate(v=[7,10,7.5]) rotate(a=[90,86,0]) two_pinholes();
  translate(v=[20,7.15,-8])  rotate(a=[90,0,30]) squarebuttonmount_positive();
  translate(v=[37,16,-8])  rotate(a=[90,0,30]) squarebuttonmount_positive();
  translate(v=[54,24.45,-8])  rotate(a=[90,0,30]) squarebuttonmount_positive();
}
}

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
  polygon([[0,0],[12,0],[12,20],[20,35],[35,45],[42,60],[62,70],[95,70],[106,64],
     [106,44],[118,44],[118,97],[60,95],[45,90],[18,70],[0,55]]); 
 translate(v=[0,0,0]) cube(size=[12,20,12]);
 translate(v=[0,0,0]) cube(size=[3,55,5]);
 translate(v=[106,44,0]) cube(size=[12,24,12]);
 translate(v=[115,44,0]) cube(size=[3,53,5]);
 }
  translate(v=[19,40,-1.8]) rotate(25) squarebuttonmount_positive();
  translate(v=[40,63,-1.8]) rotate(18) squarebuttonmount_positive();
  translate(v=[60,76,-1.8]) rotate(0) squarebuttonmount_positive();
  translate(v=[84,73,-1.8]) rotate(0) squarebuttonmount_positive();
  translate(v=[6,0,5]) rotate(a=[-90,90,0]) pinhole();
  translate(v=[112,44,5]) rotate(a=[-90,90,0]) pinhole();
 }
}

module wriststrap() {
 translate(v=[0,0,23])difference () {
  rotate(a=[0, 90, 0]) cylinder(r=wristwidth/2,h=strapwidth);
  rotate(a=[0, 90, 0]) translate([0,0,-2.5])cylinder(r=(wristwidth/2)-3,h=strapwidth+5);
  translate(v=[-2,-wristwidth/2,20]) cube(size=[strapwidth+4,wristwidth,strapwidth]);
  translate(v=[-2,-(wristwidth-15)/2,-43]) cube(size=[strapwidth+4,wristwidth-15,20]);
  translate(v=[3.5,(-wristwidth/2)+2,15]) cube(size=[strapwidth-7,8,3]); 
  translate(v=[3.5,(wristwidth/2)-6,15]) cube(size=[strapwidth-7,8,3]); 
 }
 translate(v=[0,-(wristwidth)/2,-2]) cube(size=[strapwidth,wristwidth,8]);
 translate(v=[strapwidth+5,-(wristwidth/2)+8,0]) rotate(90) pin(side=true);
 translate(v=[strapwidth+5,(wristwidth/2)-8,0]) rotate(90) pin(side=true);
 translate(v=[0,-(wristwidth)/2,-0]) cube(size=[strapwidth,2,strapwidth]);
 translate(v=[0,(wristwidth/2)-2,0]) cube(size=[strapwidth,2,strapwidth]);
 //translate(v=[7,-(wristwidth/2)-4.95,0]) pin(side=true);
 translate(v=[15,-(wristwidth/2)-4.95,0]) pin(side=true);
 //translate(v=[7,(wristwidth/2)+4.95,0]) rotate(a=[0,0,180]) pin(side=true);
 translate(v=[15,(wristwidth/2)+4.95,0]) rotate(a=[0,0,180]) pin(side=true);
//translate([strapwidth,0,0]) wriststrap_front();
}

module wriststrap_front() {
  difference() {
    translate(v=[0,-(wristwidth/2),-2]) cube([10,wristwidth,12]);
    translate(v=[0,wristwidth/2-8,3]) rotate([0,90,0])pinhole();
    translate(v=[0,-wristwidth/2+8,3]) rotate([0,90,0])pinhole();
  }
  for (i=[-1,1]) {
    translate(v=[5,i*((wristwidth)/2+10),18]) 
      rotate([0,0,i*90]) rotate([0,90,90]) translate([0,0,-5])linear_extrude(height=10) {
          polygon([[0,0],[0,8],[8,20],[8,0]]);
      }
  }
//      cube(size=[8,8,8]);
// #translate(v=[0,(wristwidth)/2,10]) cube(size=[8,8,8]);

  }

module right_rack() {
 difference() {
  linear_extrude(height = 12, center = true, convexity = 10)
  polygon([[5,0],[33,0],[78,-22],[166,0],[194,-7],[194,10],[166,10],[78,-12],[33,10],[5,10]]); 
  linear_extrude(height = 5, center = true, convexity = 10)
  polygon([[36,0],[78,-19],[137,-4],[137,1],[78,-15],[36,5]]); 
//  rotate(a=[0,90,-90]) translate(v=[0,7,-10]) pinhole();
  rotate(a=[0,90,-90]) translate(v=[0,15,-10]) pinhole();
  translate(v=[ 140,-2.5,-6]) rotate(a=[0,0,10]) cube(size=[21,3,14]);
  translate(v=[ 132,-2,-3])  cube(6);
  translate(v=[ 36,0,0.5]) rotate(-25) cube(6);
  translate([32,3,-4]) cube([6,11,4.5],center=true);
 }
 translate([50,-3,6])rotate(a=[0,0,65]) pin();
 translate(v=[198.95,5,-6]) rotate(a=[0,0,90]) pin(side=true);
 translate(v=[173,-1.5,-2.5]) rotate(a=[90,0,-14]) two_pins();
}

module left_rack() {
 difference() {
  linear_extrude(height = 12, center = true, convexity = 10)
    polygon([[5,0],[42,0],[114,31],[150,31],[150,45],[114,41],[42,10],[5,10]]);
//  rotate(a=[0,90,90]) translate(v=[0,-7,0]) pinhole();
  rotate(a=[0,90,-90]) translate(v=[0,15,-10]) pinhole();
  linear_extrude(height = 5, center = true, convexity = 10)
    polygon([[33,3],[42,3],[109,31],[105,35],[42,7],[35,7]]);
  translate(v=[ 36,1.5,0.5]) rotate(0) cube(6);
  translate(v=[105,25.05,-3]) rotate([0,0,23]) cube(6);
  translate(v=[ 110,33,-6]) rotate(a=[0,0,10]) cube(size=[21,3,14]);
 }
 translate(v=[154.95,38,-6]) rotate(a=[0,0,90]) pin(side=true);
 translate([50,8.5,6])rotate(a=[0,0,-57]) pin();
}

module rack_top() {
translate([-10,-wristwidth/2-20,0]) difference() {
     cube([25,100,10]);
     translate(v=[10,7,0]) pinhole();
     translate(v=[10,93.5,0]) pinhole();
     translate([-2.5,20,6]) cube([30,60,10]);
     translate([7.5,-3,9]) cube([10,60,10]);
    }
}

module active_button() {
  translate([-3.125,-3,0]) union(){
    cube([6.25,6,3.75]);
    translate([3.125,3,2.25]) cylinder(r=1.75,h=4.5,center=true);
    translate([(6.25-9)/2,0,0]) cube([9,6,1.5]);
  }
}

module printable() {
translate([0,180,5]) left_rack();
translate([0,130,5]) right_rack();
translate([0,0,2]) fingerpad();
translate([0,-30,13]) thumbpad();
translate([90,-10,0]) wriststrap();
}

module complete() {
translate([0,wristwidth/2,0]) translate([0,0,5]) left_rack();
translate([0,-wristwidth/2-10,0]) translate([0,0,5]) right_rack();
translate([150,wristwidth+10,-1]) rotate(-90) translate([0,0,2]) fingerpad();
translate([165,-52,11]) rotate([14,96,0]) translate([0,0,13]) thumbpad();
translate([0,0,9]) rotate([180,0,0]) translate([0,0,0]) wriststrap();
translate([strapwidth,0,9]) rotate([180,0,0]) wriststrap_front();
translate([50,0,11]) rack_top();
}


//printable();
complete();
