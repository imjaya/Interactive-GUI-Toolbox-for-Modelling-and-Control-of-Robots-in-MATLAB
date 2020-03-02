function matr=mydeter(A)
[L,U]=lu(A);
x=det(L);
y=prod(diag(U));
matr=x*y;
end