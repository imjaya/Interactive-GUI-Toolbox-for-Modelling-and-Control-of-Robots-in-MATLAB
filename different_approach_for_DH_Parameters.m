
prompt = {'Enter the total number of joints'};
dlg_title = 'Input';
num_lines = 1;
def = {'1'};
answer = inputdlg(prompt,dlg_title,num_lines,def);
num = str2num(answer{:});
F = sym('A', [num 4]);
B=eye(4);
P=eye(4);
C = sym('C', [4 4]);

for i=1:num
    prompt = {'Enter a(Link Length):','Joint Type (R for revolute, P for Prismatic):','Enter Direction of z axis w.r.t the reference(Z for +ve z axis, -Z for -ve z axis, Y for positive y axis, -Y for -ve y axis, X for +ve x axis, -X for -ve x axis):'};
    dlg_title = sprintf('Link %d',i);
    num_lines = 1;
    def1 = {sprintf('a%d',i),sprintf('alpha%d',i),sprintf('d%d',i)};
    answer1 = inputdlg(prompt,dlg_title,num_lines,def1);
    F(i,1)= answer1(1,1);
    F(i,5)=answer1(2,1);
    F(i,6)=str2sym(answer1(3,1));
    
    DH(1,i)=F(i,1);
    
    if char(F(i,5))=="R"
        prompt = {'Enter Joint angle(in Degrees):'};
        dlg_title = sprintf('Link %d',i);
        num_lines = 1;
        def2 = {sprintf('Theta %d',i)};
        answer2 = inputdlg(prompt,dlg_title,num_lines,def1);
        F(i,4)=answer2(1,1);
        F(i,3)=0;
        DH(3,i)=0;
        DH(5,i)=1;
    else
        F(i,4)=0;
        F(i,3)=answer1(1,1);
        F(i,1)=0;
        DH(4,i)=0;
        DH(5,i)=0;
        prompt = {'Enter the lower limit','Enter the Upper limit'};
        dlg_title = sprintf('Link %d',i);
        num_lines = 1;
        def3 = {sprintf('minimum limit'),sprintf('maximum limit')};
        answer3 = inputdlg(prompt,dlg_title,num_lines,def3);
        DH(6,i)=str2sym(answer3(1,1));
        DH(7,i)=str2sym(answer3(2,1));
        DH(1,i)=F(i,1);
    end
    end   
    
 for i=2:num
     if char(F(i-1,6))=="Z" && char(F(i,6))=="Z" || char(F(i-1,6))=="-Z" && char(F(i,6))=="-Z" || char(F(i-1,6))=="X" && char(F(i,6))=="X" || char(F(i-1,6))=="-X" && char(F(i,6))=="-X" || char(F(i-1,6))=="Y" && char(F(i,6))=="Y" || char(F(i-1,6))=="-Y" && char(F(i,6))=="-Y"
            F(i-1,2)=0;
        elseif char(F(i-1,6))=="Z" && char(F(i,6))=="-Z" || char(F(i-1,6))=="-Z" && char(F(i,6))=="Z" || char(F(i-1,6))=="X" && char(F(i,6))=="-X" || char(F(i-1,6))=="-X" && char(F(i,6))=="X" || char(F(i-1,6))=="Y" && char(F(i,6))=="-Y" || char(F(i-1,6))=="-Y" && char(F(i,6))=="Y"
            F(i-1,2)=180;
        elseif char(F(i-1,6))=="Z" && char(F(i,6))=="Y" || char(F(i-1,6))=="Z" && char(F(i,6))=="-X" || char(F(i-1,6))=="-Z" && char(F(i,6))=="-Y" || char(F(i-1,6))=="-Z" && char(F(i,6))=="X" || char(F(i-1,6))=="Y" && char(F(i,6))=="-Z" || char(F(i-1,6))=="-Y" && char(F(i,6))=="Z" || char(F(i-1,6))=="Y" && char(F(i,6))=="X" || char(F(i-1,6))=="-Y" && char(F(i,6))=="-X" || char(F(i-1,6))=="X" && char(F(i,6))=="Z" || char(F(i-1,6))=="X" && char(F(i,6))=="-Y" || char(F(i-1,6))=="-X" && char(F(i,6))=="-Z" || char(F(i-1,6))=="-X" && char(F(i,6))=="Y" 
            F(i-1,2)=90;
        else
            F(i-1,2)=-90;
     end
    DH(2,i)=F(i-1,2);
      end
 
    F(end,2)=0;
        
    
for i=1:num
% FOR FORWARD KINEMATICS
    %C=([cos(str2num(char(F(i,4)))) -sin(str2num(char(F(i,4))))*cos(str2num(char(F(i,2)))) sin(str2num(char(F(i,4))))*sin(str2num(char(F(i,2)))) str2num(char(F(i,1)))*cos(str2num(char(F(i,4))));sin(str2num(char(F(i,4)))) cos(str2num(char(F(i,4))))*cos(str2num(char(F(i,2)))) -cos(str2num(char(F(i,4))))*sin(str2num(char(F(i,2)))) str2num(char(F(i,1)))*sin(str2num(char(F(i,4))));0 sin(str2num(char(F(i,2)))) cos(str2num(char(F(i,2)))) str2num(char(F(i,3)));0 0 0 1]);
     C=([cos(str2num(char(F(i,4)))) -sin(str2num(char(F(i,4))))*cos(str2num(char(F(i,2)))) sin(str2num(char(F(i,4))))*sin(str2num(char(F(i,2)))) str2num(char(F(i,1)))*cos(str2num(char(F(i,4))));sin(str2num(char(F(i,4)))) cos(str2num(char(F(i,4))))*cos(str2num(char(F(i,2)))) -cos(str2num(char(F(i,4))))*sin(str2num(char(F(i,2)))) str2num(char(F(i,1)))*sin(str2num(char(F(i,4))));0 sin(str2num(char(F(i,2)))) cos(str2num(char(F(i,2)))) str2num(char(F(i,3)));0 0 0 1]);

    eval(['A' num2str(i) '= C'])
    
    B=B*C;
     % FOR FORMULA
    D=([cos(F(i,4)) -sin(F(i,4))*cos(F(i,2)) sin(F(i,4))*sin(F(i,2)) F(i,1)*cos(F(i,4));sin(F(i,4)) cos(F(i,4))*cos(F(i,2)) -cos(F(i,4))*sin(F(i,2)) F(i,1)*sin(F(i,4));0 sin(F(i,2)) cos(F(i,2)) F(i,3);0 0 0 1]);    
    P=P*D;
 end   
     

sprintf('T from Link 0 to Link %d is:',i)
simplify(P);
B
'Rotation Matrix=R'  , R=B(1:3,1:3);M=P(1:3,1:3);

R
d=B(1:3,4);
u=P(1:3,4);
'translation Matrix=d' 
d
%sprintf("the formula form Transformation Matrix")
%simplify(P)
%sprintf("the formula form Rotation Matrix")
%simplify(M)
%sprintf("the formula form Translation Matrix")
%simplify(u)