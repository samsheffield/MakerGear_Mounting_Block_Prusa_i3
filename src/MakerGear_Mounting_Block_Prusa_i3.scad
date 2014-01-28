// MakerGear hotend mounting block for Prusa i3 compact extruder

blockHeight = 9.4;
retainerHeight = 4.8;

difference() {
  // Block
  translate( [5, -1, 0] ) cube( size = [50, 25, blockHeight], center = true );

  // Mounting holes
  union(){
    translate([25, 0, -11])  cylinder(r=3.125, h=blockHeight);
    translate([-15, 0, -11])  cylinder(r=3.125, h=blockHeight);

    translate([25,0,0])  cylinder(r=2, h=blockHeight+1, center=true);
    translate([-15,0,0])  cylinder(r=2, h=blockHeight+1, center=true);
  }

  // Hotend outer cylinder cutaway
  union(){
    translate( [0, 0, (blockHeight- retainerHeight)-(blockHeight/2)] ) cylinder( h = retainerHeight, r = 8, $fs=.5 );
    translate ([-8, 0, (blockHeight- retainerHeight)-(blockHeight/2)]) cube (size = [16, 12, retainerHeight], center = false );
  }

  // Hotend inner cylinder cutaway
  union(){
    translate( [0, 0, 0] ) cylinder( h = 10.2, r=6, $fs =.5, center = true);
    translate( [0, 6, 0] ) cube ( size = [12, 12, blockHeight+1], center = true );
  }
 }