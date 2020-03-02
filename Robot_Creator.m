function [R,DH] = Robot_Creator

num=input("Please enter number of links\n");
q=sym('q', [1 num]);

for i=1:num
   x=input("1.Revolute 2.Prismatic\n"); 
   if x==1
       jointtype(i)=1;
       d(i)=num2str(input("Please enter d\n"));
       a(i)=input("Please enter a\n");
       alpha(i)=input("Please enter alpha\n");
       theta(i)=q(i);
      
       L(i)=Link('revolute', 'd', d(i), 'a',a(i), 'alpha',alpha(i)); 
       min(i)=0;
       max(i)=0;
   else
       jointtype(i)=0;
       min(i)=input("Please enter minimum length for prismatic\n");
       max(i)=input("Please enter maximum length for prismatic\n");
       a(i)=input("Please enter a\n");
       alpha(i)=input("Please enter alpha\n");
      
       d(i) = char(q(i));
       theta(i)=0;
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
end

