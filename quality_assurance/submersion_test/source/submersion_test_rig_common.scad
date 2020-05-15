// Create holes in 4 quadrants
module holes() {
    translate([hole_distance_from_centre , 0, 0]) cylinder(10, hole_diameter / 2, hole_diameter /2, $fn=360);
    translate([-hole_distance_from_centre , 0, 0]) cylinder(10, hole_diameter / 2, hole_diameter /2, $fn=360);
    translate([0, hole_distance_from_centre , 0]) cylinder(10, hole_diameter / 2, hole_diameter /2, $fn=360);
    translate([0, -hole_distance_from_centre , 0]) cylinder(10, hole_diameter / 2, hole_diameter /2, $fn=360);
}
