function [q,q_dot,T] = joint_pos_vel()
s = size(DH, 2)
%Defining links
for i = 1:s
aRe = zeros(1,3);
inertia = zeros(3,3);
mass = input('Enter mass value for link ')
aRe(1,1) = input('Enter gear matrix for link ')
inertia(2,2) = input('Enter inertia matrix for link ')
grav = input('Enter gravity value for link ')
jm = input('Enter J_m value for link ')

Linkos(i)=Link('d',d(i),'a',a(i),'alpha',alpha(i),'m',mass,'r',aRe,'I',inertia,'G',grav,'Jm',jm)
end

myrobot=SerialLink(Linkos,'name','MCR_Project')

%Initializing joint angles and velocities (given)
Q = input('Enter joint position array')
Q_dot = input('Enter joint velocity array')
grav = input('Enter gravitational acceleration vector')

%Obatining  forward dynamics through Corke Toolbox function
[T,q,q_dot]=myrobot.nofriction().fdyn(4,@torque,Q,Q_dot);

q
q_dot

end

