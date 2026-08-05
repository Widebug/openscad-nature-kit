$fn=30;
goldener_winkel = 137.507764; 
module kleekopf(){
module ye(){
scale([1,1,1.2])
rotate([0,-115,0])
for(i=[85:108]){
hull(){
rotate([0,i,0])
translate([0,0,i-90])

sphere(r= sin(i)*10-9.05);


rotate([0,i+1,0])
translate([0,0,(i+1)-90])

sphere(r= sin(i+1)*10-9.05);

}}}

n=50;

for(i=[-10:n-1]){
rotate([0,-i,i*goldener_winkel])
translate([-i/10-3.3,0,0])

ye();


}
}


translate([0,0,20])
rotate([0,-10,0])
color("Green")
for(i=[-20:5:100]){
hull(){
translate([sin(i)*20,0,i])
sphere(1);

translate([sin(i+5)*20,0,i+5])
sphere(1);
}
}





translate([-1,0,133.2]){
scale([.8,.8,.8])
rotate([0,-15,0]){
color("fuchsia")
kleekopf();
translate([0,0,-.12])
color("Green")
aka();
}}

translate([8.5,0,50])
color("Green")
for(i=[-20:5:40]){
hull(){
translate([sin(i)*20,0,i])
sphere(1.);

translate([sin(i+5)*20,0,i+5])
sphere(1);
}
}




//BLÄTTER
//BLÄTTER AN UNTERSEITE

module aka(){
module maganz(){
module ma(){
module k(){
for(i=[0:10]){
hull(){
translate([i,0,0])
linear_extrude(.1)
circle(i/2);

translate([i+1,0,0])
linear_extrude(.1)
circle((i+1)/2);
}
}
}


difference(){
k();
translate([0,0,-.1])
linear_extrude(.4)

square(20);}}

rotate([-10,0,0])
ma();
mirror([0,1,0])
rotate([-10,0,0])
ma();
}


translate([-15.959,0,-4.5])
rotate([0,15,0])
maganz();

rotate([0,-15,60])
mirror([1,0,0])
translate([-14.252,0,-8.5])
maganz();


rotate([0,-15,-60])
mirror([1,0,0])
translate([-14.252,0,-8.5])
maganz();
}






module klein(){
module halbe(){
scale([5,1,1])
linear_extrude(.2)
difference(){
circle(5);
translate([-5,0,0])
square(10);


}}

rotate([-10,0,0])
color("Green")

halbe();
mirror([0,1,0])
rotate([-10,0,0])
color("DarkGreen")

halbe();
}

//DREIBLATT
module dreiblatt(){
translate([0,0,-65])
color("Green")

for(i=[72:1:94]){
hull(){
translate([sin(i)*80,0,i])
sphere(.05);

translate([sin(i+1)*80,0,i+1])
sphere(.05);
}
}

translate([-40.4,0,30])
rotate([0,50,0])
color("Green")

for(i=[90:1:93]){
hull(){
translate([sin(i)*80,0,i])
sphere(.05);

translate([sin(i+1)*80,0,i+1])
sphere(.05);
}
}


translate([+40.4*4.958,0,30])
mirror([1,0,0])
rotate([0,50,0])
color("Green")

for(i=[90:1:93]){
hull(){
translate([sin(i)*80,0,i])
sphere(.05);

translate([sin(i+1)*80,0,i+1])
sphere(.05);
}
}



scale([.5,.5,.5])
translate([139.85,-8.88,74.967])
rotate([0,45,30])
klein();



scale([.5,.5,.5])
translate([159.4,-12.60,81.6])
rotate([0,60,90])
klein();

mirror([1,0,0])
scale([.5,.5,.5])
translate([-179.96,-8.88,74.967])
rotate([0,45,30])
klein();

}



translate([74,-1.5,0])
rotate([190,185,0])
dreiblatt();




//BLATTRÖHRE
module rohr(){
translate([20,0,-10])
difference(){
scale([1,.91,1])
hull(){
translate([0,0,-70])
for(i=[70:1:94]){
hull(){
translate([sin(i)*80,0,i])
sphere(sin(i)/5);

translate([sin(i+1)*80,0,i+1])
sphere(sin(i)/5);
}
}

scale([.8,.8,.8])
translate([99.6,-12.5,53])
rotate([0,60,90])
klein();}



translate([8.15,.67,0])
rotate([3,0.5,0.09])
scale([0.895,.8,1.1]){
hull(){
translate([0,0,-70])
for(i=[70:1:94]){
hull(){
translate([sin(i)*80,0,i])
sphere(sin(i)/5);

translate([sin(i+1)*80,0,i+1])
sphere(sin(i)/5);
}
}

scale([.8,.8,.8])
translate([99.6,-12.5,53])
rotate([0,60,90])
klein();}}}
}


translate([5,7,9])
rotate([-7,-1,-130])
scale([.1,.2,.2])
color("Green")

rohr();

module rohr2(){
translate([20,0,-10])
scale([1,.91,1])
hull(){
translate([0,0,-70])
for(i=[70:1:94]){
hull(){
translate([sin(i)*80,0,i])
sphere(sin(i)/5);

translate([sin(i+1)*80,0,i+1])
sphere(sin(i)/5);
}
}

scale([.8,.8,.8])
translate([99.6,-12.5,53])
rotate([0,60,90])
klein();}



translate([8.15,.67,0])
rotate([3,0.5,0.09])
scale([0.895,.8,1.1]){
hull(){
translate([0,0,-70])
for(i=[70:1:94]){
hull(){
translate([sin(i)*80,0,i])
sphere(sin(i)/5);

translate([sin(i+1)*80,0,i+1])
sphere(sin(i)/5);
}
}

scale([.8,.8,.8])
translate([99.6,-12.5,53])
rotate([0,60,90])
klein();}}
}


  translate([1.02,2.8,13.4])
rotate([-7,-1,-130])
scale([.04,.04,.04])
color("Green")

rohr2();


//DREIBLATT 2


module dreiblatt2(){
module ichwillnichtmehr(){
translate([0,0,-65])
color("Green")
for(i=[72:1:94]){
hull(){
translate([sin(i)*80,0,i])
sphere(.05);

translate([sin(i+1)*80,0,i+1])
sphere(.05);
}
}

translate([-40.4,0,30])
rotate([0,50,0])
color("Green")
for(i=[90:.5:91]){
hull(){
translate([sin(i)*80,0,i])
sphere(.05);

translate([sin(i+.5)*80,0,i+.5])
sphere(.05);
}
}


translate([+40.4*4.958,0,30])
mirror([1,0,0])
rotate([0,50,0])
color("Green")
for(i=[90:1:91]){
hull(){
translate([sin(i)*80,0,i])
sphere(.05);

translate([sin(i+1)*80,0,i+1])
sphere(.05);
}
}
}



rotate([90,0,-90])
translate([-159.4,0.069,-72])
scale([2,.6,2])
ichwillnichtmehr();




translate([14.77,-15,1.1])
rotate([0,5,80])
scale([.5,1.8,.5])

klein();

translate([-.17,0,-.64])
rotate([0,-3,0])
scale([.5,1.8,.5])

klein();

translate([14.05,14.63,2.2])
rotate([0,10,-80])
scale([.5,1.8,.5])

klein();
  
  }
  
  translate([0,0,-17.47])
  translate([-21.32,-47.9,60])
  rotate([15,30,60])
  dreiblatt2();
  
  
  
  //ZWEITER KLEEKOPF
  module klee2(){
    color("fuchsia")
  kleekopf();
  translate([0,0,-.12])
  color("Green")
  aka();
  }
  
  
  
  translate([23,0,98.5])
  rotate([0,10,0])
  scale(.5)

  klee2();