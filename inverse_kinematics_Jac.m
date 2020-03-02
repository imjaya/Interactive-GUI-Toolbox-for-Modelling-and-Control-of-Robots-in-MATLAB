function [q,dq] = inverse_kinematics_Jac(R,pd,od,q)




l1=norm(R.a,1);
l2=norm(R.d,1);
l=2*(l1+l2);

W=[-l l -l l -l l];

Rot=eul2r(od);
T=rt2tr(Rot,pd);


view(3);
axis auto;


g=true;
i=1;



       
       
    
while g
   if i >1000
        warning('Reached Iteration Limit');
        break
    end 
    
    
   Tq =R.fkine(q');
      
   ep = transl(T - Tq);
   e_new=tr2eul(Tq);
   eo = od'- e_new';

 
    error=[ep;eo];

    Jg = jacobn(R, q');
	
    Rot= t2r(Tq);
	J = [Rot zeros(3,3); zeros(3,3) Rot] * Jg;
         
        
    T_phi = eul2jac(e_new);
    if rcond(T_phi) < eps
       disp('Representational Singularity: Ignoring Orientation');
       [q,dq]=invJacob_3axis(T,R,q);
       q=q';
       plot(R,q','workspace',W);
       break;
    
    else
    Ja= blkdiag( eye(3,3), inv(T_phi) ) * J;
    
  
   
        dq = 0.9*pinv(Ja)* error;
   
        q = q + dq;
       
        nm = norm(error);
       if nm <= 1e-4
         break;
       end
    
   

       
   
   
   i=i+1;
    end       
           

            
    
end




plot(R,q','workspace',W);   
R.fkine(q');

end

