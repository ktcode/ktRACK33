//
// ktRack33
//
//


gap1 = 0.001;
gap2 = 0.002;
th = 2;


//translate([-146, -3000, 0]) cube([146, 6000, 2400]);
//translate([760, -3000, 0]) cube([146, 6000, 2400]);

translate([5, 0, 800-145-38]) cube([750, 650, 38]);
translate([760/2, 225-125, 800-145]) ball();
translate([760/2, 225-125+225+30, 800-145]) water();
translate([760/2-150, 225-125+225+30-50, 800-145]) soap();
translate([760/2, 225-125, 800-145-113-80]) trap();


//translate([760/2+180, 650-420, 0]) roomba();
//translate([760/2+180, 650-440, 0]) deebotX2();
translate([760/2+170, 650-440, 0]) deebotT30();




module ball()
{
difference()
{
    translate([0, 0, 500/2]) sphere(r = 500/2);
    translate([-500/2, -500/2, 145]) cube([500, 500, 500]);
    translate([0, 0, 500/2+10]) sphere(r = 500/2);
}
}
module water()
{
    cylinder(r=28/2, h=255);
    rotate([90, 0, 90]) translate([-98/2, 255, 0]) rotate_extrude(angle=135, convexity=10) translate([98/2, 0, 0]) circle(28/2);
    translate([0, -162.8+28/2+10, 234]) rotate([-45, 0, 0]) cylinder(r=28/2, h=80);
}
module soap()
{
    cylinder(r=33/2, h=220);
    translate([0, 0, 220-7]) rotate([90, 0, 0]) cylinder(r=12/2, h=108.5);
    
    translate([0, -12, 162]) rotate([0, 0, 0]) cylinder(r=12/2, h=21);
}
module trap()
{
    translate([0, 0, 80]) cylinder(r=30/2, h=80);
    cylinder(r=47/2, h=113);
    translate([0, 0, 70]) rotate([-90, 0, 0]) cylinder(r=30/2, h=400);
}
module roomba()
{
    cylinder(r=339/2, h=87);
    translate([-401/2, 0, 0]) cube([401, 417, 415]);
}
module deebotX2()
{
    translate([-320/2, 0, 0]) cube([320, 353, 95]);
    translate([-394/2, 443*1/3, 0]) cube([394, 443*2/3, 527.5]);
}
module deebotT20()
{
    cylinder(r=362/2, h=103.5);
    translate([-448/2, 0, 0]) cube([448, 430, 578]);
}
module deebotT30()
{
    cylinder(r=353/2, h=104);
    translate([-409/2, 0, 0]) cube([409, 490/2, 480]);
}
