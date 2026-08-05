$fn=5;
module gras(){
scale(0.1)
translate([0,0,150.4])
rotate([-45,180,0])

for(i=[-9.9:10:110]){
hull(){
translate([0,-i,i])
linear_extrude(.1)

rotate([0,0,i/5])
scale([1.5,.2,1])
circle(sin(i)*5);


translate([0,-(i+10),i+10])
linear_extrude(.1)

rotate([0,0,(i+10)/5])
scale([1.5,.2,1])
circle(sin(i+10)*5);
}}
}


n=500;
x_werte= rands(1,99,n,16);
y_werte= rands(1,99,n,17);
biegung= rands(1,30,n,18);
drehung= rands(0,360,n,19);
hoehe= rands(7,17,n,10);

for(i=[0:n-1]){

translate([x_werte[i],y_werte[i],0.3])
rotate([biegung[i],biegung[i],drehung[i]])
color("green")
gras();
}



n1=250;

x_werte1=rands(5,95,n1,15);
y_werte1=rands(5,95,n1,16);
z_werte=rands(-.5,.5,n1,17);
radius=rands(3,6,n1,18);
for(i1=[0:n1-1]){
translate([x_werte1[i1],y_werte1[i1],z_werte[i1]])

scale([1,.9,.6])
 color([0.30, 0.20, 0.15])
sphere(radius[i1],$fn=10);


}





color("green")
square(100);
