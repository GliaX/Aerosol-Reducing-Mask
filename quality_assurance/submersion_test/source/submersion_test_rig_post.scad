// Include variables
include <submersion_test_rig_variables.scad>;
include <submersion_test_rig_common.scad>;

postwidth = collet_diameter+8;
postlength = 40;
basethickness = 4;
module post() {
    union() {
        cylinder(30, collet_diameter / 2, collet_diameter / 2, $fn=360);
        translate([-postlength/2, -(postwidth/2), 0]) 
            cube([postlength, postwidth, basethickness]);
        //cylinder(5, plunger_diameter / 2, plunger_diameter / 2, $fn=360);
    }
}

holex = 15;
module postholes() {
    translate([holex, 0, -1]) cylinder(10, hole_diameter/2, hole_diameter/2, $fn=360);
    translate([-holex, 0, -1]) cylinder(10, hole_diameter/2, hole_diameter/2, $fn=360);
}

difference() {
    post();
    postholes();
}