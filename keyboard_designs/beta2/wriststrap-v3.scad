include <pins.scad>



module wriststrap() {
 // part that goes over your wrist

 strapwidth = 28;
 wristwidth = 65;

 difference () {
  rotate(a=[0, 90, 0]) cylinder(r=wristwidth/2,h=strapwidth);
  rotate(a=[0, 90, 0]) cylinder(r=(wristwidth/2)-2,h=strapwidth);
  translate(v=[-2,-wristwidth/2,20]) cube(size=[strapwidth+4,wristwidth,strapwidth]);
  translate(v=[-2,-(wristwidth-15)/2,-43]) cube(size=[strapwidth+4,wristwidth-15,20]);
  translate(v=[3.5,(-wristwidth/2)+4,15]) cube(size=[strapwidth-7,4,3]); 
  translate(v=[3.5,(wristwidth/2)-8,15]) cube(size=[strapwidth-7,4,3]); 
 }

 translate(v=[0,-(wristwidth)/2,-23]) cube(size=[strapwidth,wristwidth,2]);
 translate(v=[0,-(wristwidth)/2,-23]) cube(size=[strapwidth,2,strapwidth]);
 translate(v=[0,(wristwidth/2)-2,-23]) cube(size=[strapwidth,2,strapwidth]);


 translate(v=[6,-(wristwidth/2)-4.95,-23]) #pin(side=true);
 translate(v=[21,-(wristwidth/2)-4.95,-23]) pin(side=true);


 translate(v=[6,(wristwidth/2)+4.95,-23]) rotate(a=[0,0,180]) pin(side=true);
 translate(v=[21,(wristwidth/2)+4.95,-23]) rotate(a=[0,0,180]) pin(side=true);

}

wriststrap();