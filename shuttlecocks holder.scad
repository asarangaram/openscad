$fn=60;


difference() {
    union(){
    translate([0,27,0])
single();
translate([0,-27,0])
single();
}
translate([0,-15,32])
    rotate([0,90,0])
                cylinder(d=4, h=20,  center=true);
translate([0,15,32])
    rotate([0,90,0])
                cylinder(d=4, h=20,  center=true);

}
module single()
{
        difference(){
            union(){
            translate([-2.5,0,15])
                cube([5, 62, 50], center=true);
            translate([-34,-6,0])
                cube([34, 12,8]);
            translate([-34-19,0,0])
            difference(){
                cylinder(d=45,h=10);
                cylinder(d=35,h=10);
            }}
            
            }
            
}
