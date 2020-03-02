syms t1 t2 t3 q1 q2 q3
a1=0.3
a2=0.3
d4=0.3


t1 = (-pi/4:0.05:pi/4) ;
t2 = (-2*pi/3:0.05:2*pi/3);
t3 = (-pi/2:0.05:pi/2) ;
q = {t1,t2,t3};
[Q{1:numel(q)}] = ndgrid(q{:})
yaxes=axes('xlim',[-2 2],'ylim',[-2 2],'zlim',[-2 2]);

%axis equal;
view(3);
grid on;
%axis ;
hold on
xlabel('x')
ylabel('y')
zlabel('z')

   
                px=matlabFunction(a1*cos(q1)+a2*cos(q1+q2)+a3*cos(q1+q2+q3))
                py=matlabFunction(a1*sin(q1)+a2*sin(q1+q2)+a3*sin(q1+q2+q3))
                pz=0;
                X = px(Q{:});
                size(X(:))
                Y=py(Q{:});
                size(Y)
                Z=linspace(0,0,169344);

%                 px=matlabFunction(cos(q1)*(a2*cos(q2)+a3*cos(q2+q3)))
%                 py=matlabFunction(sin(q1)*(a2*cos(q2)+a3*cos(q2+q3)))
%                 pz=matlabFunction(a2*sin(q2)+a3*sin(q2+q3));
%                 X = px(Q{:});
%                 size(X(:))
%                 Y=py(Q{:});
%                 size(Y)
%                 Z=pz(Q{:});
%                 size(Z)


             
                plot3(X(:),Y(:),Z(:),'g.')

        
