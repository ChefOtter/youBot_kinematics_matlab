clear all;
clc;

s1=sym('s1');
c1=sym('c1');
s2=sym('s2');
c2=sym('c2');
s3=sym('s3');
c3=sym('c3');
s4=sym('s4');
c4=sym('c4');
s5=sym('s5');
c5=sym('c5');
a1=sym('a1');
a2=sym('a2');
a3=sym('a3');
d1=sym('d1');
d5=sym('d5');
c23=sym('c23');
s23=sym('s23');
c234=sym('c234');
s234=sym('s234');

z0=[0;0;1];
p0=[0;0;0];
z1 = [s1;-c1;0];
p1 = [a1*c1;a1*s1;d1];
z2 = z1;
p2 = [c1*(a1+a2*c2);s1*(a1+a2*c2);d1+a2*s2];
z3= z1;
p3= [c1*(a1+a2*c2+a3*c23);s1*(a1+a2*c2+a3*c23);d1+a2*s2+a3*s23];
z4 = [c1*c234;s1*c234;s234];
p4 = p3;
p5 = [c1*(a1+a2*c2+a3*c23+d5*c234);s1*(a1+a2*c2+a3*c23+d5*c234);d1+a2*s2+a3*s23+d5*s234];

j1 = [cross(z0,(p5-p0));z0];
j2 = [cross(z1,(p5-p1));z1];
j3 = [cross(z2,(p5-p2));z2];
j4 = [cross(z3,(p5-p3));z3];
j5 = [cross(z4,(p5-p4));z4];