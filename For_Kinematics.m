function  [T,Tf]=For_Kinematics(R,DH)

[~,num] =size(DH); 
F = sym('A', [num 4]);
B=eye(4);
P=eye(4);
C = sym('C', [4 4]);
A=[];

theta= sym('q', [1 num]);

Q=zeros(1,num);
for i=1:num
    F(i,1)=DH(1,i); %a
    
    F(i,2)= DH(2,i);%alpha
    
    
    
    F(i,3)=DH(3,i);%d
    
    
    
    F(i,4)=theta(i);%theta
    
    F(i,5)=DH(5,i);%joint type
    
       
      % FOR FORWARD KINEMATICS
    C=simplify([cos(F(i,4)) -sin(F(i,4))*cos(F(i,2)) sin(F(i,4))*sin(F(i,2)) F(i,1)*cos(F(i,4));
             sin(F(i,4)) cos(F(i,4))*cos(F(i,2)) -cos(F(i,4))*sin(F(i,2)) F(i,1)*sin(F(i,4));
             0 sin(F(i,2)) cos(F(i,2)) F(i,3);
             0 0 0 1]);
         T(i)={C};

    B=B*C;
%      % FOR FORMULA
%     D=([cos(F(i,4)) -sin(F(i,4))*cos(F(i,2)) sin(F(i,4))*sin(F(i,2)) F(i,1)*cos(F(i,4));sin(F(i,4)) cos(F(i,4))*cos(F(i,2)) -cos(F(i,4))*sin(F(i,2)) F(i,1)*sin(F(i,4));0 sin(F(i,2)) cos(F(i,2)) F(i,3);0 0 0 1]);    
%     P=P*D;
end   
     Tf=simplify(B)

% l1=norm(R.a,1);
% l2=norm(R.d,1);
% l=2*(l1+l2);
% axis auto;
% W=[-l l -l l -l l];
% R.plot(Q,'workspace',W)
% R.teach();
% sprintf('T from Link 0 to Link %d is:',i)
% simplify(P);
% B
% 'Rotation Matrix=R'  , R=B(1:3,1:3);M=P(1:3,1:3);
% 
% R
% d=B(1:3,4);
% u=P(1:3,4);
% 'translation Matrix=d' 
% d
% print("the formula form Transformation Matrix")
% simplify(P)
% print("the formula form Rotation Matrix")
% simplify(M)
% print("the formula form Translation Matrix")
% simplify(u)
% end

