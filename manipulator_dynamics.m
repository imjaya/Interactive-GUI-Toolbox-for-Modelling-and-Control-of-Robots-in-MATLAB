hold on 
clear all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%DH Table%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num=input("Please enter number of links\n");
theta=sym('q', [1 num]);
for i=1:num
   x=input("1.Revolute 2.Prismatic\n"); 
   if x==1
       jointtype(i)=1;
       d(i)=input("Please enter d\n");
       a(i)=input("Please enter a\n");
       alpha(i)=input("Please enter alpha\n");
       L(i)=Link('revolute', 'd', d(i), 'a',a(i), 'alpha',alpha(i)); 
       min(i)=0;
       max(i)=0;
   else
       jointtype(i)=0;
       min(i)=input("Please enter minimum length for prismatic\n");
       max(i)=input("Please enter maximum length for prismatic\n");
       a(i)=input("Please enter a\n");
       alpha(i)=input("Please enter alpha\n");
       
       L(i)=Link('prismatic', 'theta',0, 'a', a(i), 'alpha', alpha(i));
       L(i).qlim = [min(i),max(i)];
   end 
end
R=SerialLink(L,'name','robo')
DH=[a;
    alpha;
    d;
    theta;
    jointtype;
    min;
    max
    ]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%DHTable end%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DH
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
time = ('Enter time period')
%Obatining  forward dynamics through Corke Toolbox function
[T,q,q_dot]=myrobot.nofriction().fdyn(time,@torque,Q,Q_dot)


B = myrobot.inertia(q);
C = myrobot.coriolis(q,q_dot);
B(:,:,size(B,3))
C(:,:,size(C,3))
F = myrobot.friction(q_dot)
G = myrobot.gravload(q(end,:),grav)


plot(T,rad2deg(q))
xlabel('Time ( seconds )')
ylabel('Angle Theta ( degrees )')
title('Joint angles vs time')
legend('q_1','q_2','q_3')

plot(T,q_dot)
xlabel('Time ( seconds )')
ylabel('Angular velocity ( degree )')
title('Joint rates vs time')
legend('qdot_1','qdot_2','qdot_3')