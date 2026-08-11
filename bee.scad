$fn=30;
module segment(){
hull(){
cylinder(4,5,4);


for(i=[0:19]){
hull(){
rotate([0,0,i*18])
translate([4,0,2])
scale([1,1,1.5])
sphere();


rotate([0,0,(i+1)*18])
translate([4,0,0.75])
scale([1,1,1.5])
sphere();
}

}
}

}

rotate([-90,0,0])
segment();

translate([0,-2.5,-0.5])
rotate([-80,0,0])
scale([0.95,0.95,0.95])

segment();


translate([0,-5,-1.5])
rotate([-70,0,0])
scale([0.9,0.9,0.9])
segment();

translate([0,-7,-2.5])
rotate([-60,0,0])
scale([0.8,0.8,0.8])
segment();

hull(){
translate([0,-8.5,-3.5])
rotate([-50,0,0])
scale([0.7,0.7,0.7])
segment();

translate([0,-9.5,-4.5])
sphere(2);}


rotate([-90,0,0])
color("black")
cylinder(1,5.05,5.05);


translate([0,-2.5,-0.5])
rotate([-80,0,0])
scale([0.95,0.95,0.95])
color("black")
cylinder(1,5.05,5.05);



translate([0,-5,-1.5])
rotate([-70,0,0])
scale([0.8,0.8,0.8])
color("black")
cylinder(1,5.7,5.7);



translate([0,-7,-2.5])
rotate([-60,0,0])
scale([0.8,0.8,0.8])
color("black")

cylinder(1,5.05,5.05);


translate([0,7,0]){
goldener_winkel = 137.507764; 
n=1500;
sphere(5.5);
for(i=[0:n-1]){
z=(i/(n-1))*2-1;
rotate([0,acos(z),i*goldener_winkel])
translate([0,0,5.5])
cylinder(1,0.05,0.05*0.5,$fn=4);
}
}

//KOPF

module kopf(){
module mandibel(){
minkowski(){
linear_extrude(0.1)
polygon(points=[[10,0.5],[12,-1.5],[12.5,2.4],[13,3],[12,5],[11.5,4],[11.5,2.5]]);

translate([10,0.6,0.25])
sphere(0.075);

}
}


hull(){
translate([2.5,-3.8,-4.5])
rotate([-90,0,110])
scale([0.3,0.5,0.5])
mandibel();
translate([-.6,2.45,-5.74])
sphere(.05);}

mirror([0,1,0]){
hull(){
translate([2.5,-9.8,-4.53])
rotate([-90,0,110])
scale([0.3,0.5,0.5])
mandibel();
translate([-.6,-3.53,-5.74])
sphere(.05);}
}

rotate([0,-90,0])
hull(){

translate([-0.4,0,0])
scale([1.2 ,0.5,0.9])
rotate([0,50,0])
sphere(2);



translate([-0.4,6,0])
scale([1.2 ,0.5,0.9])
rotate([0,50,0])
sphere(2);




translate([-4.5,3,0])
sphere(1.5);

translate([-1,3,-0.5])
sphere(2);




translate([-2,3,1])
scale([3,3,1.1])
sphere();}

translate([-1.2,3,1.25])
sphere(.2);

translate([-.5,3.8,1.8])
sphere(.2);
translate([-.5,2.2,1.8])
sphere(.2);

translate([-1.5,2,-1.6])
rotate([0,-90,0])
cylinder(1,0.2,0.2);

translate([-2.469,2,-1.603])
rotate([0,-80,0])
cylinder(1,0.2,0.2);

hull(){


translate([-3.45,2,-1.43])
sphere(.2);
translate([-6.133,1.0295,-2.498])
sphere(.2);
}



translate([0,5.99,0])
mirror([0,1,0]){
translate([-1.5,2,-1.6])
rotate([0,-90,0])
cylinder(1,0.2,0.2);

translate([-2.469,2,-1.603])
rotate([0,-80,0])
cylinder(1,0.2,0.2);
hull(){
translate([-3.45,2,-1.43])
sphere(.2);
translate([-6.133,1.0295,-2.498])
sphere(.2);
}
}

rotate([0,5,0])
rotate([0,-90,0])
color("brown")
translate([-.5,6.37,0.1])
scale([1.2 ,0.5,0.65])
rotate([30,50,0])
sphere(2);

mirror([0,1,0])
rotate([0,5,0])
rotate([0,-90,0])
color("brown")
translate([-.5,0.37,.1])
scale([1.2 ,0.5,0.65])
rotate([30,50,0])
sphere(2);

}





translate([-3.5,14,2])
rotate([0,8,-90])
scale([1.15,1.15,1.15])
kopf();


//BEINE

module bein_vorne(){
translate([0,.5,.3])
rotate([30,0,0])
hull(){
linear_extrude(.1)
circle();
translate([0,0,1])
sphere(.65);}


translate([0,-.7,1.5])
rotate([20,0,0])
scale([1,2,1])
sphere(.3);


translate([0,-1.07,1.3])
rotate([180,90,0]){

scale([1,1,1]){


for(i = [0 : 0.3 :3]) { 
    i_1 = i;
    i_2 = i + 0.3;
    
    hull() {
        // Erste Kugel
        rotate([0, 0, i_1 + 3])
            translate([i_1, 0, 0])
                sphere(r = (i_1 < 1.2) ? 0.3 : (i_1 > 2.1) ? 0.20 : 0.3 - ((i_1 - 1.2) * (0.3 - 0.20) / (2.1 - 1.2)));

        // Zweite Kugel
        rotate([0, 0, i_2 + 3])
            translate([i_2, 0, 0])
                sphere(r = (i_2 < 1.2) ? 0.3 :(i_2 > 2.1) ? 0.20 : 0.3 - ((i_2 - 1.2) * (0.3 - 0.20) / (2.1 - 1.2)));
    }
}

}
}


function berechne_radius(i_wert)= (i_wert < 0.2) ? 0.2 : (i_wert > 5) ? 0.3 : 0.2 + i_wert/10;


translate([0,-1.45,-2])
rotate([90,-55,-90])
for(i = [0 : 0.3 :3]) { 
    i_1 = i;
    i_2 = i + 0.3;
    
    r1=berechne_radius(i_1);
    r2=berechne_radius(i_2);
    hull() {
        // Erste Kugel
        rotate([0, 0, i_1 + 3])
            translate([i_1, 0, 0])
            scale([1,1,1-i_1/7.5])
                sphere(r = r1);

        // Zweite Kugel
        rotate([0, 0, i_2 + 3])
            translate([i_2, 0, 0])
            scale([1,1,1-i_2/7.5])
                sphere(r = r2);
    }
}


translate([0,-1.7,2.58])
rotate([0,90,])
rotate([0,0,-50])
for(i = [0 : 0.3 :2]) { 
    i_1 = i;
    i_2 = i + 0.3;
    
    hull() {
        // Erste Kugel
        rotate([0, 0, i_1 + 3])
            translate([i_1, 0, 0])
            scale([1,1,0.9])
                sphere(r = .15+i_1/30);

        // Zweite Kugel
        rotate([0, 0, i_2 + 3])
            translate([i_2, 0, 0])
            scale([1,1,0.9])
                sphere(r = .15+i_2/30);
    }
}



hull(){
scale([.9,1,1])
translate([0,-1.7,2.58])
sphere(.15);

translate([0,-1.5,3.1])
sphere(.10);
}




module kralle(){
scale([0.02,0.02,0.02]){
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

translate([-.07,-1.4,2.85])
rotate([10,0,20])
kralle();

translate([.07,-1.4,2.85])
rotate([10,0,-20])
kralle();

}

translate([-3,10,-2.5])
rotate([0,0,215])
scale([1.2,1.2,1.2])
mirror([0,0,1])
bein_vorne();









//BEIN MITTE

module bein_mitte(){
translate([0,.5,.3])
rotate([30,0,0])
hull(){
linear_extrude(.1)
circle();
translate([0,0,1])
sphere(.65);}


translate([0,-.7,1.5])
rotate([20,0,0])
scale([1,2,1])
sphere(.3);


translate([0,-1.07,1.3])
rotate([180,90,0]){

scale([1,1,1]){


for(i = [0 : 0.3 :3]) { 
    i_1 = i;
    i_2 = i + 0.3;
    
    hull() {
        // Erste Kugel
        rotate([0, 0, i_1 + 3])
            translate([i_1, 0, 0])
                sphere(r = (i_1 < 1.2) ? 0.3 : (i_1 > 2.1) ? 0.20 : 0.3 - ((i_1 - 1.2) * (0.3 - 0.20) / (2.1 - 1.2)));

        // Zweite Kugel
        rotate([0, 0, i_2 + 3])
            translate([i_2, 0, 0])
                sphere(r = (i_2 < 1.2) ? 0.3 :(i_2 > 2.1) ? 0.20 : 0.3 - ((i_2 - 1.2) * (0.3 - 0.20) / (2.1 - 1.2)));
    }
}

}
}


function berechne_radius(i_wert)= (i_wert < 0.2) ? 0.2 : (i_wert > 5) ? 0.3 : 0.2 + i_wert/10;


translate([0,-1.45,-2])
rotate([90,-55,-90])
for(i = [0 : 0.3 :3]) { 
    i_1 = i;
    i_2 = i + 0.3;
    
    r1=berechne_radius(i_1);
    r2=berechne_radius(i_2);
    rotate([110,15,20]){
    hull() {
        // Erste Kugel
        rotate([0, 0, i_1 + 3])
            translate([i_1, 0, 0])
            scale([1,1,1-i_1/7.5])
                sphere(r = r1);

        // Zweite Kugel
        rotate([0, 0, i_2 + 3])
            translate([i_2, 0, 0])
            scale([1,1,1-i_2/7.5])
                sphere(r = r2);
    }
}}


translate([2,-1.3,2.5])
rotate([0,90,])
rotate([0,40,-50])
for(i = [0 : 0.3 :2]) { 
    i_1 = i;
    i_2 = i + 0.3;
    
    
    hull() {
        // Erste Kugel
        rotate([0, 0, i_1 + 3])
            translate([i_1, 0, 0])
            scale([1,1,0.9])
                sphere(r = .15+i_1/30);

        // Zweite Kugel
        rotate([0, 0, i_2 + 3])
            translate([i_2, 0, 0])
            scale([1,1,0.9])
                sphere(r = .15+i_2/30);
    }
}


translate([2,0.39,-.086])
hull(){
scale([.9,1,1])
translate([0,-1.7,2.58])
sphere(.15);

translate([.5,-1.8,2.8])
sphere(.10);
}




module kralle(){
scale([0.02,0.02,0.02]){
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
translate([3.7,-1.406,.43]){
rotate([0,0,-90]){
translate([-.07,-1.15,2.60])
rotate([10,180,25])
kralle();

translate([.07,-1.15,2.6])
rotate([10,180,-20])
kralle();
}}
}

translate([-4,7,-2.5])
rotate([0,0,-90])
scale([1.2,1.2,1.2])
mirror([0,0,1])
bein_mitte();

//BEIN HINTEN


module bein_hinten(){
translate([0,.5,.3])
rotate([30,0,0])
hull(){
linear_extrude(.1)
circle();
translate([0,0,1])
sphere(.65);}


translate([0,-.7,1.5])
rotate([0,0,0])
scale([1,2,1])
sphere(.3);


translate([0,-1.07,1.4])
rotate([180,90,0]){


for(i = [0 : 0.3 :3]) { 
    i_1 = i;
    i_2 = i + 0.3;
    
    hull() {
        // Erste Kugel
        rotate([0, 0, i_1 + 60])
            translate([i_1, 0, 0])
                sphere(r = (i_1 < 1.2) ? 0.3 : (i_1 > 2.1) ? 0.20 : 0.3 - ((i_1 - 1.2) * (0.3 - 0.20) / (2.1 - 1.2)));

        // Zweite Kugel
        rotate([0, 0, i_2 + 60])
            translate([i_2, 0, 0])
                sphere(r = (i_2 < 1.2) ? 0.3 :(i_2 > 2.1) ? 0.20 : 0.3 - ((i_2 - 1.2) * (0.3 - 0.20) / (2.1 - 1.2)));
    }
}


}


function berechne_radius(i_wert)= (i_wert < 0.2) ? 0.2 : (i_wert > 5) ? 0.3 : 0.2 + i_wert/10;


translate([0,-4,-0.08])
rotate([90,-55,-70])
for(i = [0 : 0.3 :3]) { 
    i_1 = i;
    i_2 = i + 0.3;
    
    r1=berechne_radius(i_1);
    r2=berechne_radius(i_2);
    rotate([110,15,-15]){
    hull() {
        // Erste Kugel
        rotate([90, 0, i_1 + 3])
            translate([i_1, 0, 0])
            scale([1,1,1-i_1/7.5])
                sphere(r = r1);

        // Zweite Kugel
        rotate([90, 0, i_2 + 3])
            translate([i_2, 0, 0])
            scale([1,1,1-i_2/7.5])
                sphere(r = r2);
    }
}}


translate([3.4,-8.5,3.3])
rotate([90,90,])
rotate([210,40,-50])
for(i = [0 : 0.3 :3]) { 
    i_1 = i;
    i_2 = i + 0.3;
    
    
    hull() {
        // Erste Kugel
        rotate([0, 0, i_1 + 3])
            translate([i_1, 0, 0])
            scale([1,1.5,0.9])
                sphere(r = .15+i_1/30);

        // Zweite Kugel
        rotate([0, 0, i_2 + 3])
            translate([i_2, 0, 0])
            scale([1,1.5,0.9])
                sphere(r = .15+i_2/30);
    }
}


translate([3.35,-7.1,.7])
hull(){
scale([.5,.8,1])
translate([0,-1.7,2.58])
sphere(.15);

translate([.5,-1.8,2.8])
sphere(.10);
}




module kralle(){
scale([0.02,0.02,0.02]){
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
translate([4.76,-9.8,1.2]){
rotate([0,0,-135]){
translate([-.07,-1.15,2.60])
rotate([10,180,25])
kralle();

translate([.07,-1.15,2.6])
rotate([10,180,-20])
kralle();
}}
}
translate([-3,4,-2.3])
rotate([25,0,-40])
scale([1.2,1.2,1.2])
mirror([0,0,1])
bein_hinten();

mirror([1,0,0]){
translate([-3,4,-2.3])
rotate([25,0,-40])
scale([1.2,1.2,1.2])
mirror([0,0,1])
bein_hinten();



translate([-3,10,-2.5])
rotate([0,0,215])
scale([1.2,1.2,1.2])
mirror([0,0,1])
bein_vorne();


translate([-4,7,-2.5])
rotate([0,0,-90])
scale([1.2,1.2,1.2])
mirror([0,0,1])
bein_mitte();
}



//FLUEGEL


module fluegel(){
color("skyblue",0.3)

rotate([90,0,25]){
hull(){
translate([0,0,10])
rotate([0,30,0])

for(i=[0.16:.2:20]){
i_2=i+.2;
hull(){

translate([i,0,sqrt(i)*3])
sphere(.1);

translate([i_2,0,sqrt(i_2)*3])
sphere(.1);


}
}

translate([-0.145,0,9.49])
rotate([0,92,0])
for(i=[-1.5:.2:3.25]){
i_2=i+.2;

hull(){
translate([i,0,(i*i)*.37])
sphere(.1);

translate([i_2,0,(i_2*i_2)*.37])
sphere(.1);
}



}


translate([3.65,0,6.15])
rotate([180,-21,0])
for(i=[0.1:.2:21]){
i_2=i+.2;
hull(){

translate([i,0,sqrt(i)*.5])
sphere(.1);

translate([i_2,0,sqrt(i_2)*.5])
sphere(.1);


}
}


translate([10,0,10])
sphere(.1);}

}


//HINTERFLUEGEL
color("skyblue",0.3)
translate([9.5,-4.5,0])
rotate([180,0,-5])
scale([0.7,0.5,1]){
rotate([90,0,0]){
hull(){
translate([0,0,10])
rotate([0,30,0])

for(i=[0.16:.2:20]){
i_2=i+.2;
hull(){

translate([i,0,sqrt(i)*3])
sphere(.1);

translate([i_2,0,sqrt(i_2)*3])
sphere(.1);


}
}

translate([-0.145,0,9.49])
rotate([0,92,0])
for(i=[-1.5:.2:3.25]){
i_2=i+.2;

hull(){
translate([i,0,(i*i)*.37])
sphere(.1);

translate([i_2,0,(i_2*i_2)*.37])
sphere(.1);
}



}


translate([3.65,0,6.15])
rotate([180,-21,0])
for(i=[0.1:.2:21]){
i_2=i+.2;
hull(){

translate([i,0,sqrt(i)*.5])
sphere(.1);

translate([i_2,0,sqrt(i_2)*.5])
sphere(.1);


}
}


translate([10,0,10])
sphere(.1);}

}}
}

translate([-31,7,2.5])
rotate([-110,0,0])
fluegel();



mirror([1,0,0])
translate([-31,7,2.5])
rotate([-110,0,0])
fluegel();

