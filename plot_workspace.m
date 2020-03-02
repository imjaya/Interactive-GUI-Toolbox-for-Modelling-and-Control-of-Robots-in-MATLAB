function plot_workspace(R,limits)

l1=norm(R.a,1);
l2=norm(R.d,1);
l=2*(l1+l2);

W=[-l l -l l -l l];

[y,w] = size(R.a);
qin=zeros(1,w);
for i=1:w
q{i} =(limits(i,1):.05:limits(i,2));
end

[Q{1:numel(q)}] = ndgrid(q{:});


axis auto;
view(3);
grid on;
%axis ;
hold on
xlabel('x')
ylabel('y')
zlabel('z')

var = sym('q',[w 1]);
T = R.fkine(var);



px=matlabFunction(T(1,4))
py=matlabFunction(T(2,4));
pz=matlabFunction(T(3,4));



arX = ar_o_no(px)
arY = ar_o_no(py);
arZ = ar_o_no(pz);

X = px(Q{arX});
size(X);
Y=py(Q{arY});
size(Y);
Z=pz(Q{arZ});
[m,n]=size(X);
size(Z);
if isempty(arZ)
    Z = zeros(m,n);
end
plot3(X(:),Y(:),Z(:),'.');
R.plot(qin,'workspace',W)
R.teach

end

