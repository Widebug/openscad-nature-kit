$fn=30;
module meadow_flower(){
module blaublatt(){
color("MediumBlue")
linear_extrude(.1)
hull(){
circle(5);
translate([10,0,0])
circle();
}}


for(i=[0:4]){

rotate([0,10,i*(360/5)])
translate([-11.6,0,0])
blaublatt();


}






color("GreenYellow")
cylinder(5,.2,.1);
translate([0,0,5])
scale([1,1,.9])
color("GreenYellow")

rotate_extrude(){
translate([.1,0,0])
circle(.1);
}

//Unterblatt
color("GreenYellow")
for(i=[0:4]){
rotate([0,-5,i*(360/5)]){


linear_extrude(.1)
polygon(points=[[10,0],[3.7,2.7],[3.7,-2.7]]);

linear_extrude(.1)
polygon(points=[[0,0],[3.7,2.7],[3.7,-2.7]]);

}
}


//Staubblätter


biegungsfaktor=rands(0,360,10,91);
x_wiesenblume=rands(-.5,.5,10,89);
y_wiesenblume=rands(-.5,.5,10,92.5);

module staubblatt(){


for(i=[0:9]){
color("fuchsia")
hull(){
rotate([0,i,0])
translate([0,0,i])
sphere(.05);


rotate([0,(i+1),0])
translate([0,0,i+1])
sphere(.05);
}

if(i==9){

rotate([0,i+1,0])
translate([0,0,i+1])
rotate([90,0,0])
color("Indigo")
cylinder(.5,.07,.07,center=true);
}
}



}



for(j=[0:9]){

translate([x_wiesenblume[j],y_wiesenblume[j],0])
rotate([0,0,biegungsfaktor[j]])
staubblatt();

}

//stiel
color("CornflowerBlue")
hull(){
for(i=[-2:-.5]){

hull(){
rotate([i/2+10,0,0])
translate([0,0,i])
sphere(.1);


rotate([(i+1)/2+10,0,0])
translate([0,0,i+1])
sphere(.1);
}
}

scale([1,1,.7])
translate([0,0,.2])

rotate_extrude(){
translate([.5,0,0])
circle(.5);
}
}



color("GreenYellow")
for(i=[-20:-2]){

hull(){
rotate([i/2+10,0,0])
translate([0,0,i])
sphere(.1);


rotate([(i+1)/2+10,0,0])
translate([0,0,i+1])
sphere(.1);
}
}
}

meadow_flower();
