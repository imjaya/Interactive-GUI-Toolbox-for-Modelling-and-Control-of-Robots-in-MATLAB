
hold on 
clear all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%DH Table%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num=input("Please enter number of links\n");
q=sym('q', [1 num]);
q=[20 45]
for i=1:num
   x=input("1.Revolute 2.Prismatic\n"); 
   if x==1
       jointtype(i)=1;
       d(i)=input("Please enter d\n");
       theta(i)=q(i);
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
       theta(i)=0;
       d(i)=q(i)
       
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


[~,num] =size(DH); 
F = sym('A', [num+1 4]);
B=eye(4);
P=eye(4);
C = sym('C', [4 4]);
A=[];

Q=zeros(1,num);
for i=1:num
    F(i,1)=DH(1,i); %a
    
    F(i,2)= DH(2,i);%alpha
    
    
    
    F(i,3)=DH(3,i);%d
    
    
    
    F(i,4)=theta(i)%theta
    
    F(i,5)=DH(5,i);%joint type
    
       
      % FOR FORWARD KINEMATICS
    C=simplify([cos(F(i,4)) -sin(F(i,4))*cos(F(i,2)) sin(F(i,4))*sin(F(i,2)) F(i,1)*cos(F(i,4));
             sin(F(i,4)) cos(F(i,4))*cos(F(i,2)) -cos(F(i,4))*sin(F(i,2)) F(i,1)*sin(F(i,4));
             0 sin(F(i,2)) cos(F(i,2)) F(i,3);
             0 0 0 1]);
%    Trans(i)={eval(sprintf('A%d = C;',i))};
        Trans(i)={eval(C)};
        
    B=B*C;
     % FOR FORMULA
    D=([cos(F(i,4)) -sin(F(i,4))*cos(F(i,2)) sin(F(i,4))*sin(F(i,2)) F(i,1)*cos(F(i,4));sin(F(i,4)) cos(F(i,4))*cos(F(i,2)) -cos(F(i,4))*sin(F(i,2)) F(i,1)*sin(F(i,4));0 sin(F(i,2)) cos(F(i,2)) F(i,3);0 0 0 1]);    
    P=P*D;
end   
     

l1=norm(R.a,1);
l2=norm(R.d,1);
l=2*(l1+l2);
sprintf('T from Link 0 to Link %d is:',i)
simplify(P);
B
'Rotation Matrix=R'  , R=B(1:3,1:3);M=P(1:3,1:3);

R
d=B(1:3,4);
u=P(1:3,4);
'translation Matrix=d' 
d

Tee = [];
s = size(DH,2);
z(:,:,1) = [0;0;1];
p(:,:,1) = [0;0;0];

% Zs and Ps
for i = 1:s, j = 2:s
    Tees = [Trans{i}];
    z(:,:,j) = Tees(1:3,3);
    p(:,:,j) = Tees(1:3,4);
end

%Jacobian computations
for i = 1:s, j = 2:s
    if DH(5,i) == 1
        Jp(:,:,s) = cross(z(:,:,j-1),(p(:,:,j)-p(:,:,j-1)));
        Jo(:,:,s) = z(:,:,j-1);
    end
    if DH(5,i) == 0
        Jp(:,:,s) = z(:,:,j-1);
        Jo(:,:,s) = 0;
    end 
end
%Adding zeros
Jp(:,:,s:s+s)=0
Jo(:,:,s:s+s)=0





