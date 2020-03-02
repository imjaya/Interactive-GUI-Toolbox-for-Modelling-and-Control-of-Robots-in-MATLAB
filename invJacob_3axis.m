function [q,dq]= invJacob_3axis(T,R,q)
l1=norm(R.a,1);
l2=norm(R.d,1);
l=2*(l1+l2);

W=[-l l -l l -l l];

m=[1 1 1 0 0 0]';
m = logical(m);
i=1;
g=true;
while g
   if i >1000
        warning('Reached Iteration Limit');
        break
    end 
    
    
    Tq =R.fkine(q');
            
   ep = transl(T - Tq);
  
   error=[ep];

   J = jacob0(R, q);
   
   
   dq =  0.9*pinv(J(m,:))* error(m);
   
   q = q + dq;
   

       
   
    nm = norm(error(m));
    if nm <= 1e-4
     break;
    end
    i=i+1;
         
           

            
    
end
q=q';
end

