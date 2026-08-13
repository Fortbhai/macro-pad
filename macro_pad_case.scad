// Simple 3-key macro pad case
$fn=50;

// Parameters
switch_size = 14;       // MX switch cutout size
spacing = 19;           // center-to-center spacing
plate_thickness = 5;    // top plate thickness
case_height = 20;       // total case height
wall_thickness = 3;     // side walls
screw_hole_radius = 1.2;

// Module for switch cutouts
module switch_cutout(x) {
    translate([x, 0, 0])
        cube([switch_size, switch_size, plate_thickness+1], center=true);
}

// Top plate with cutouts + screw holes
module top_plate() {
    difference() {
        cube([65, 25, plate_thickness], center=true);

        // Switch cutouts
        switch_cutout(-spacing);
        switch_cutout(0);
        switch_cutout(spacing);

        // Screw holes
        for (x=[-30,30], y=[-10,10])
            translate([x,y,0])
                cylinder(h=plate_thickness+2, r=screw_hole_radius, center=true);
    }
}

// Bottom case with screw holes
module bottom_case() {
    difference() {
        cube([65, 25, case_height], center=true);

        // Hollow inside
        translate([0,0,2])
            cube([65-2*wall_thickness, 25-2*wall_thickness, case_height], center=true);

        // Screw holes
        for (x=[-30,30], y=[-10,10])
            translate([x,y,0])
                cylinder(h=case_height+2, r=screw_hole_radius, center=true);
    }
}

// Render both parts
translate([0,0,0]) top_plate();
translate([0,0,-case_height-10]) bottom_case();
