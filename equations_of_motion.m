function [q,q_dot,B,C,F,G] = equations_of_motion(DH)
s = size(DH, 2)
%Defining links
for i = 1:s
aRe = zeros(1,3);
inertia = zeros(3,3);
mass = input('Enter mass value for link ')
aRe(1,1) = input('Enter gear matrix for link ')
inertia(2,2) = input('Enter inertia matrix for link ')
grav = input('Enter gravity value for link ')
im = input('Enter J_m value for link ')

Linkos(i)=Link('d',d(i),'a',a(i),'alpha',alpha(i),'m',mass,'r',aRe,'I',inertia,'G',grav,'Jm',im)
end

myrobot=SerialLink(Linkos,'name','MCR_Project')

%Initializing joint angles and velocities (given)
Q = input('Enter joint position array')
Q_dot = input('Enter joint velocity array')
grav = input('Enter gravitational acceleration vector')
time = ('Enter time period')
%Obatining  forward dynamics through Corke Toolbox function
[T,q,q_dot]=myrobot.nofriction().fdyn(time,@torque,Q,Q_dot);

disp('The eqution of motion is:')
disp('B(q)q? + C(q, q?)q? + Fvq? + Fs sgn (q?) + g(q) = ? ? JT (q)he')
disp('The coefficients and variables are:')

plot(time,rad2deg(q))
xlabel('Time ( seconds )')
ylabel('Angle Theta ( degrees )')
title('Joint angles vs time')
legend('q_1','q_2','q_3')

plot(time,q_dot)
xlabel('Time ( seconds )')
ylabel('Angular velocity ( degree )')
title('Joint rates vs time')
legend('qdot_1','qdot_2','qdot_3')
q(:,size(q,2))
q_dot(:,size(q_dot,2))

[T,Tf]=For_Kin_angles(myrobot,DH,Q);
Trans=T;
B = myrobot.inertia(q);
C = myrobot.coriolis(q,q_dot);

B(:,:,size(B,3))
C(:,:,size(C,3))

F = myrobot.friction(q_dot)
G = myrobot.gravload(q(end,:),grav)

jacobians(DH,Trans)
end
