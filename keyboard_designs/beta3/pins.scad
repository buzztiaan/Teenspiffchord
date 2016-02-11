// Pin Connectors V2
// Tony Buser <tbuser@gmail.com>

// pinhole(h=5);

// test();
// pintack(h=10);
// pinpeg(h=20);

module test() {
  tolerance = 0.3;
  
  translate([-12, 12, 0]) pinpeg(h=20);
  translate([12, 12, 0]) pintack(h=10);
  
  difference() {
    union() {
      translate([0, -12, 2.5]) cube(size = [59, 20, 5], center = true);
      translate([24, -12, 7.5]) cube(size = [12, 20, 15], center = true);
    }
    translate([-24, -12, 0]) pinhole(h=5, t=tolerance);
    translate([-12, -12, 0]) pinhole(h=5, t=tolerance, tight=false);
    translate([0, -12, 0]) pinhole(h=10, t=tolerance);
    translate([12, -12, 0]) pinhole(h=10, t=tolerance, tight=false);
    translate([24, -12, 15]) rotate([0, 180, 0]) pinhole(h=10, t=tolerance);
  }
}

module pinhole(h=10, r=4, lh=3, lt=1, t=0.3, tight=true) {
  union() {
    pin_solid(h, r+(t/2), lh, lt);
    cylinder(h=h+0.2, r=r);
    // widen the cylinder slightly
    // cylinder(h=h+0.2, r=r+(t-0.2/2));
    if (tight == false) {
      cylinder(h=h+0.2, r=r+(t/2)+0.25);
    }
    // widen the entrance hole to make insertion easier
    translate([0, 0, -0.1]) cylinder(h=lh/3, r2=r, r1=r+(t/2)+(lt/2));
  }
}

module pin(h=10, r=4, lh=3, lt=1, side=false) {
  if (side) {
    pin_horizontal(h, r, lh, lt);
  } else {
    pin_vertical(h, r, lh, lt);
  }
}

module pintack(h=10, r=4, lh=3, lt=1, bh=3, br=8.75) {
  union() {
    cylinder(h=bh, r=br);
    translate([0, 0, bh]) pin(h, r, lh, lt);
  }
}

module pinpeg(h=20, r=4, lh=3, lt=1) {
  union() {
    translate([0, -h/4+0.05, 0]) pin(h/2+0.1, r, lh, lt, side=true);
    translate([0, h/4-0.05, 0]) rotate([0, 0, 180]) pin(h/2+0.1, r, lh, lt, side=true);
  }
}

module pin_vertical(h=10, r=4, lh=3, lt=1) {
  difference() {
    pin_solid(h, r, lh, lt);
    
    // center cut
    translate([-r*0.5/2, -(r*2+lt*2)/2, h/4]) cube([r*0.5, r*2+lt*2, h]);
    translate([0, 0, h/4]) cylinder(h=h+lh, r=r/2.5, $fn=20);
    // center curve
    // translate([0, 0, h/4]) rotate([90, 0, 0]) cylinder(h=r*2, r=r*0.5/2, center=true, $fn=20);
  
    // side cuts
    translate([-r*2, -lt-r*1.125, -1]) cube([r*4, lt*2, h+2]);
    translate([-r*2, -lt+r*1.125, -1]) cube([r*4, lt*2, h+2]);
  }
}

// call pin with side=true instead of this
module pin_horizontal(h=10, r=4, lh=3, lt=1) {
  translate([0, h/2, r*1.125-lt]) rotate([90, 0, 0]) pin_vertical(h, r, lh, lt);
}

// this is mainly to make the pinhole module easier
module pin_solid(h=10, r=4, lh=3, lt=1) {
  union() {
    cylinder(h=h-lh, r=r, $fn=30);
    translate([0, 0, h-lh]) cylinder(h=lh*0.25, r1=r, r2=r+(lt/2), $fn=30);
    translate([0, 0, h-lh+lh*0.25]) cylinder(h=lh*0.25, r=r+(lt/2), $fn=30);    
    translate([0, 0, h-lh+lh*0.50]) cylinder(h=lh*0.50, r1=r+(lt/2), r2=r-(lt/2), $fn=30);    
  }
}

module two_pinholes() {
 pinhole();
 translate(v=[15,0,0]) pinhole();
}