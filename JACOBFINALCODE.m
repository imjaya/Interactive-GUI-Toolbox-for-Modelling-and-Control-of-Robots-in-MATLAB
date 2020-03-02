clear all
close all
clc
prompt = {'Enter the total number the robotic arms'};
dlg_title = 'Input';
num_lines = 1;
def = {'1'};
answer = inputdlg(prompt,dlg_title,num_lines,def);
num = str2num(answer{:});
F = sym('A', [num 4]);
B=eye(4);
C = sym('C', [4 4]);
clc
A=[];
for i=1:num
    prompt = {'Enter a(Link Length):','Enter alpha(Link Twist):','Enter d(Link Offset):','Enter theta(Joint Angle):','Enter the joint type(P for Prismatic R for Revolute):'};
    dlg_title = sprintf('Link %d',i);
    num_lines = 1;
    def1 = {sprintf('a%d',i),sprintf('alpha%d',i),sprintf('d%d',i),sprintf('t%d',i),sprintf('R%d',i)};
    answer1 = inputdlg(prompt,dlg_title,num_lines,def1);
    q=answer1(1,1);
    q1=sym(q,'real');
    F(i,1)=q1;
    
    F(i,2)=str2sym(answer1(2,1));  
    
    r=answer1(3,1);
    r1=sym(r,'real');
    F(i,3)=r1;
    
    s=answer1(4,1);
    s1=sym(s,'real');
    F(i,4)=s1;
    
    F(i,5)=answer1(5,1);
    C=simplify([cos(F(i,4)) -sin(F(i,4))*cos(F(i,2)) sin(F(i,4))*sin(F(i,2)) F(i,1)*cos(F(i,4));
             sin(F(i,4)) cos(F(i,4))*cos(F(i,2)) -cos(F(i,4))*sin(F(i,2)) F(i,1)*sin(F(i,4));
             0 sin(F(i,2)) cos(F(i,2)) F(i,3);
             0 0 0 1]);
    eval(sprintf('A%d = C;',i));
   % B=B*C; 
    Mat=eval(sprintf('A%d',i));
    B=B*C;
    Zmatrix(1:3,i)=B(1:3,3);
    Pmatrix(1:3,i)=B(1:3,4);
end
%sprintf('T from Link 0 to Link %d is:',i)
%pretty(simplify(B))
z0=[0;0;1];
p0=[0;0;0];
pe=B(1:3,4);
%'Rotation Matrix=R'  , R=B(1:3,1:3);
%x=simplify(R)
%d=B(1:3,4);
%'translation Matrix=d' , simplify(d)
if strcmp(char(F(1,5)),'R')==1
   Jacobmatrix(1:3,1)=cross(z0,(pe-p0));
   Jacobmatrix(4:6,1)=z0;
else
    Jacobmatrix(1:3,1)=z0;
    Jacobmatrix(4:6,1)=[0;0;0];
end
m=1;
for i=2:num
 if strcmp(char(F(i,5)),'R')==1
     Jacobmatrix1(1:3,i)=cross(Zmatrix(:,m),(pe-Pmatrix(:,m)));
     Jacobmatrix1(4:6,i)=Zmatrix(:,m);
 else
     Jacobmatrix1(1:3,i)=Zmatrix(:,m);
     Jacobmatrix1(4:6,i)=[0;0;0];
    
 end
m=m+1;
end
if num>1
Jacobmatrix;
Jacobmatrix1(:,1)=[];
JACOBMATRIX=horzcat(Jacobmatrix,Jacobmatrix1);
finaljacob=simplify(JACOBMATRIX)
else
finaljacob=Jacobmatrix
end
fprintf("Any of the below individual value/s can be 0 for singularity to occur\n");
simplify(mydeter(finaljacob))