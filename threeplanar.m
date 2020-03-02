clear all;
clc
a1 = 4;
a2 = 4;
a3 = 4;
L(1)=Link([0,0,a1,0]);
L(2)=Link([0,0,a2,0]);

q= [0 0]';


Robo= SerialLink(L,'name','3planar')


Q=[pi/2 0];




T=Robo.fkine(Q)

pd= transl(T);
od=tr2eul(T);
[qf,dq] = inverse_kinematics_Jac(Robo,pd,od,q);
Robo.fkine(qf)


