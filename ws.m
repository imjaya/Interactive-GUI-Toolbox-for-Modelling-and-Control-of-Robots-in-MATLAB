clc;
clear all;

a1=0.3
a2=0.3
d4=0.3

L{1} = Revolute('d',0,'a',a1,'alpha',0);
L{2} = Revolute('d',0,'a',a2,'alpha',pi); 
L{3} = Prismatic('theta',0,'a',0,'alpha',0);
L{3}.qlim = [0,0.3];
L{4} = Revolute('d',d4,'a',0,'alpha',0);
Robo= SerialLink([L{1} L{2} L{3} L{4}],'name','SCARA') 




limits=[-pi/2 pi/2;
        -2*pi/3 2*pi/3;
         -.3 .3;
         -pi pi];

plot_workspace(Robo,limits)