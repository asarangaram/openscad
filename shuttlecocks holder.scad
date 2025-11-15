$fn = 60;

rotate([0, 90, 0])
difference() {
    // --- Two mirrored 'single' modules ---
    for (y = [-27, 27])
        translate([0, y, 0]) single();

    // --- Two side holes (cylinders) ---
    for (y = [-15, 15])
        translate([0, y, 32])
            rotate([0, 90, 0])
                cylinder(d = 4, h = 20, center = true);
}

module single() {
    difference() {
        union() {
            // Main block
            translate([-2.5, 0, 15])
                cube([5, 62, 50], center = true);

            // Connector block
            translate([-34, -6, 0])
                cube([34, 12, 8]);

            // Front ring (hollow cylinder)
            translate([-53, 0, 0])  // -34 - 19 = -53
                difference() {
                    cylinder(d = 45, h = 10);
                    cylinder(d = 35, h = 10);
                }
        }
    }
}
