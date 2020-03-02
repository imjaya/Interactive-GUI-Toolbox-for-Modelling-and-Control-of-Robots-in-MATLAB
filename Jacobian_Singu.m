clear all
clc
num=input("Please enter number of links\n");
angl=size(1,num);
for i=1:num
   x=input("1.Revolute 2.Prismatic\n"); 
   if x==1
       d(i)=input("Please enter d\n");
       a(i)=input("Please enter a\n");
       alpha(i)=input("Please enter alpha\n");
       angl(1,i)=input("Please enter theta\n");
       L(i)=Link('revolute', 'd', d(i), 'a',a(i), 'alpha',alpha(i)); 
   else
       d(i)=input("Please enter d\n");
       a(i)=input("Please enter a\n");
       alpha(i)=input("Please enter alpha\n");
       angl(1,i)=0;
       L(i)=Link('prismatic', 'theta',0, 'a', a(i), 'alpha', alpha(i));
   end 
end
R=SerialLink(L,'name','robo')
R.teach
J=R.jacob0(angl)
jsingu(J)