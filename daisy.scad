$fn=30;

//Stängel
color("green"){
for(i=[0:5:120]){
hull(){
translate([sin(i)*10,0,i])
sphere(2);

translate([sin(i+5)*10,0,i+5])
sphere(2);
}
}
}




module kopf(){
module blattchen(){

rotate([5,0,0]){
translate([0,-1.5,15])
rotate([30,0,0])
scale([1,1,0.8])
difference(){
scale([1,0.1424,3])
sphere(10);

translate([0,0,-26])
cube(30,center=true);
}

}}

for(i=[0:1.435:9]){



rotate([0,0,i*36])
translate([0,-22,-2])
color("green")
blattchen();





}

hull(){
for(i=[0:1.435:9]){
rotate([0,0,i*36])
translate([0,-19.6,0])

scale([1,1,0.6])
rotate([185,0,0])
difference(){
scale([1,0.1,4])
sphere(10);

translate([0,0,-26])
cube(30,center=true);
}}


translate([0,0,-25])
rotate([0,-180,0])
cylinder(r1=15,r2=0,h=8);
}}


translate([7.7,0,130])
rotate([0,-5,0])
scale([0.5,0.5,0.5])
color("green")
kopf();



module krone(){
module bluten(){


translate([0,-1.5,15])
rotate([35,0,0])
scale([1,1,0.8])
difference(){
scale([1,0.1,8])
sphere(5);

translate([0,0,-26])
cube(39,center=true);
}

}


for(i=[0:18]){



rotate([0,0,i*20])
translate([0,-9,120])
color("Ivory")
bluten();
}
}

translate([19,0,0])
rotate([0,-5,0])

krone();





module pollen(){
scale([0.037,0.037,0.037])
for(i=[0:0.6:36]){
rotate([0,0,i*10])

for(i=[0:2:50]){

rotate([0,0,i*2])
translate([i*5,0,-(i*i)/10])
sphere(5+i/5);




}
}
}


translate([6.65,0,141.67])
rotate([0,-5,0])
pollen();


//BLATT


module blatt_lang(){
module blatt_segment(j){
    hull(){
        linear_extrude(0.1) rotate([0, 0, j * 36]) translate([5, 0, 0]) circle(1);
        linear_extrude(0.1) rotate([0, 0, (j + 1) * 36]) translate([5, 0, 0]) circle(1);
    }
}

for(i = [1 : 30]){ 
    for(j = [0 : 4]){    
        
 
        breite_faktor = (i == 1) ? 0 : sin((i - 1) * 6) * 1.5;
        
   
        dicke_faktor = 0.3; 
        
 
        vorwaerts_biegung = pow(i, 1.5) * 0.4;

        hull() {
            
            translate([0, (i * 1.5) + vorwaerts_biegung, i * 1.5])
            scale([breite_faktor, dicke_faktor, 1])
            blatt_segment(j); 

         
            naechste_breite = sin(i * 6) * 1.5;
            vorwaerts_biegung_naechste = pow(i + 1, 1.5) * 0.4;
            
            translate([0, ((i + 1) * 1.5) + vorwaerts_biegung_naechste, (i + 1) * 1.5])
            scale([naechste_breite, dicke_faktor, 1])
            blatt_segment(j); 
        }
    }
}}









module blatt_kurz(){
module blatt_segment(j){
    hull(){
        linear_extrude(0.1) rotate([0, 0, j * 36]) translate([5, 0, 0]) circle(1);
        linear_extrude(0.1) rotate([0, 0, (j + 1) * 36]) translate([5, 0, 0]) circle(1);
    }
}

for(i = [1 : 30]){ 
    for(j = [0 : 4]){    
        
 
        breite_faktor = (i == 1) ? 0 : sin((i - 1) * 6) * 1.2;
        
   
        dicke_faktor = 0.3; 
        
 
        vorwaerts_biegung = pow(i, 1.2) * 0.4;

        hull() {
            
            translate([0, (i * 1.2) + vorwaerts_biegung, i * 1.2])
            scale([breite_faktor, dicke_faktor, 1])
            blatt_segment(j); 

         
            naechste_breite = sin(i * 6) * 1.2;
            vorwaerts_biegung_naechste = pow(i + 1, 1.2) * 0.4;
            
            translate([0, ((i + 1) * 1.2) + vorwaerts_biegung_naechste, (i + 1) * 1.2])
            scale([naechste_breite, dicke_faktor, 1])
            blatt_segment(j); 
        }
    }
}}



mirror([0,1,0])
translate([0,-2.8,-3])
color("green")
blatt_kurz();


translate([0,-2.8,-3])
color("green")
blatt_lang();



