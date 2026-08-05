$fn=30;

module aphid(){

translate([10.7,0,0])
scale([1.2,0.9,0.8])
color("YellowGreen")
sphere(3.5);


translate([14.5,0,0])
scale([0.5,1,1])
color("YellowGreen")
sphere(1.5);


color("YellowGreen")
translate([0.5,0,-0.3])
hull(){
translate([15,0.6,0.9])
scale([1.5,1,1])
sphere(0.5);

translate([15,-0.6,0.9])
scale([1.5,1,1])
sphere(0.5);

translate([15.2,0,0])
scale([1,2,1])
sphere(0.5);


translate([14.6,0,-1])
sphere(0.5);}



translate([15.45,1,0.2])
color("DarkRed")
sphere(0.35);




color("YellowGreen")
hull(){
translate([15.9,0.8,0.7])
sphere(0.15);


translate([15.9,1.2,0.8])
sphere(0.08);
}

translate([11.49,-0.4,2.51])
rotate([-160,0,-250])
color("YellowGreen")
for(i=[0:5]){
hull(){
rotate([0,0,i*15])
translate([5,0,0])
sphere(i/80);

rotate([0,0,(i+1)*15])
translate([5,0,0])
sphere((i+1)/80);

}

}




mirror([0,1,0]){
translate([15.45,1,0.2])
color("DarkRed")
sphere(0.35);




color("YellowGreen")
hull(){
translate([15.9,0.8,0.7])
sphere(0.15);


translate([15.9,1.2,0.8])
sphere(0.08);
}
color("YellowGreen")
translate([11.49,-0.4,2.51])
rotate([-160,0,-250])
for(i=[0:5]){
hull(){
rotate([0,0,i*15])
translate([5,0,0])
sphere(i/80);

rotate([0,0,(i+1)*15])
translate([5,0,0])
sphere((i+1)/80);

}

}
}

//BEINE
color("YellowGreen"){
hull(){
translate([13,-2,-1])
sphere(0.5);

translate([13.4,-2.5,-1.3])
sphere(0.1);}

hull(){
translate([13.4,-2.5,-1.3])

sphere(0.1);

translate([13.55,-2.5,-1.3])

sphere(0.1);}

hull(){
translate([13.55,-2.5,-1.3])
sphere(0.1);

translate([15,-2.5,-0.7])
sphere(0.1);
}

hull(){
translate([15,-2.5,-0.7])
sphere(0.1);


translate([18,-3,-1.85])
sphere(0.06);
}

hull(){
translate([18,-3,-1.85])
sphere(0.06);

translate([18.5,-3,-1.85])
sphere(0.06);}

}


module kralle(){
scale([0.01,0.01,0.01]){
    mirror([180,0,-180]){
radius = 15;
segmente = 10;

for (i = [0 : segmente-1]) {
    hull() {
        rotate([0, 0, i * 10]) translate([radius, 0, 0]) 
            sphere(d = 5 - i*0.4);
        rotate([0, 0, (i+1) * 10]) translate([radius, 0, 0]) 
            sphere(d = 5 - (i+1)*0.4);
    }
}
}
}
}


translate([18.5,-3.02,-2])
rotate([0,0,-110])
color("YellowGreen")
kralle();

translate([18.5,-2.98,-2])
rotate([0,0,-70])
color("YellowGreen")
kralle();



mirror([0,1,0]){
translate([18.5,-3.02,-2])
rotate([0,0,-110])
color("YellowGreen")
kralle();

translate([18.5,-2.98,-2])
rotate([0,0,-70])
color("YellowGreen")
kralle();

color("YellowGreen")
hull(){
translate([13,-2,-1])
sphere(0.5);

translate([13.4,-2.5,-1.3])
sphere(0.1);}
color("YellowGreen")
hull(){
translate([13.4,-2.5,-1.3])
sphere(0.1);

translate([13.55,-2.5,-1.3])
sphere(0.1);}
color("YellowGreen")
hull(){
translate([13.55,-2.5,-1.3])
sphere(0.1);

translate([15,-2.5,-0.7])
sphere(0.1);
}
color("YellowGreen")
hull(){
translate([15,-2.5,-0.7])
sphere(0.1);


translate([18,-3,-1.85])
sphere(0.06);
}
color("YellowGreen")
hull(){
translate([18,-3,-1.85])
sphere(0.06);

translate([18.5,-3,-1.85])
sphere(0.06);}


}



//MITTELBEINE


module bein(){
hull(){
translate([13,-2,-1])
sphere(0.5);

translate([13.4,-2.5,-1.3])
sphere(0.1);}

hull(){
translate([13.4,-2.5,-1.3])
sphere(0.1);

translate([13.55,-2.5,-1.3])
sphere(0.1);}

hull(){
translate([13.55,-2.5,-1.3])
sphere(0.1);

translate([15,-2.5,-0.7])
sphere(0.1);
}

hull(){
translate([15,-2.5,-0.7])
sphere(0.1);


translate([18,-3,-1.85])
sphere(0.06);
}

hull(){
translate([18,-3,-1.85])
sphere(0.06);

translate([18.5,-3,-1.85])
sphere(0.06);}
translate([18.5,-3.02,-2])
rotate([0,0,-110])
kralle();

translate([18.5,-2.98,-2])
rotate([0,0,-70])
kralle();
}



translate([11,10.5,0])
rotate([0,0,-80])
color("YellowGreen")
bein();



mirror([0,1,0])

translate([11,10.5,0])
rotate([0,0,-80])
color("YellowGreen")
bein();




//HINTERBEINE

module bein_lang(){
hull(){
translate([13,-2,-1])
sphere(0.5);

translate([13.5,-2.0,-1.3])
sphere(0.1);}

hull(){
translate([13.5,-2.0,-1.3])
sphere(0.1);

translate([13.65,-2.0,-1.3])
sphere(0.1);}

hull(){
translate([13.65,-2.0,-1.3])
sphere(0.1);

translate([15,-2.5,-0.7])
sphere(0.1);
}

hull(){
translate([15,-2.5,-0.7])
sphere(0.1);


translate([19,-3,-1.85])
sphere(0.06);
}

hull(){
translate([19,-3,-1.85])
sphere(0.06);

translate([19.5,-3,-1.85])
sphere(0.06);}
translate([19.5,-3.02,-2])
rotate([0,0,-110])
kralle();

translate([19.5,-2.98,-2])
rotate([0,0,-70])
kralle();
}

translate([17,8,0])
rotate([0,0,-120])
color("YellowGreen")
bein_lang();

mirror([0,1,0])
translate([17,8,0])
rotate([0,0,-120])
color("YellowGreen")
bein_lang();



translate([7.5,1,1])
rotate([0,-60,-10])
color("YellowGreen")
cylinder(3,0.05,0.05);

translate([7.2,1.05,1.15])
color("YellowGreen")
sphere(0.1);

mirror([0,1,0]){
translate([7.5,1,1])
rotate([0,-60,-10])
color("YellowGreen")
cylinder(3,0.05,0.05);

translate([7.2,1.05,1.15])
color("YellowGreen")
sphere(0.1);}


translate([6.7,0,0])
rotate([0,-65,0])
color("YellowGreen")
cylinder(1,0.1,0.05);
}



aphid();
