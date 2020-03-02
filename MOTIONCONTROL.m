    a  = [1;1];

  
    m_l1  = 50;
    m_l2  = 50;

  
    l_1  =  0.5;
    l_2  =  0.5;

 
    I_l1 = 10;
    I_l2 = I_l1;


 
    m_m1 = 5;
    m_m2 = 5;

  
    I_m1 = 0.01;
    I_m2 = 0.01;

 
    k_r1 = 100;
    k_r2 = 100;


    m_1 = m_l1 + m_m2;
    m_2 = m_l2;

  
    m1_lC1 = m_l1*(l_1 - a(1));
    m2_lC2 = m_l2*(l_2 - a(2));

  
    I_1 = I_l1 + m_l1*(l_1 - a(1))^2 + I_m2;
    I_2 = I_l2 + m_l2*(l_2 - a(2))^2;
   
    

  pi_m(1) = a(1)*m_1 + m1_lC1 + a(1)*m_2;
  pi_m(2) = a(1)*m1_lC1 + I_1 + k_r1^2*I_m1;
  pi_m(3) = a(2)*m_2 + m2_lC2;
  pi_m(4) = a(2)*m2_lC2 + I_2;
  pi_m(5) = I_m2;

 
    a  = [1;1];

 
    m_l1  = 50;
    m_l2  = 50;


    l_1  =  0.5;
    l_2  =  0.5;

 
    I_l1 = 10;
    I_l2 = I_l1;


    m_m1 = 5;
    m_m2 = 5;


    I_m1 = 0.01;
    I_m2 = 0.01;

 
    k_r1 = 100;
    k_r2 = 100;


    m_1 = m_l1 + m_m2;
    m_2 = m_l2;

  
    m1_lC1 = m_l1*(l_1 - a(1));
    m2_lC2 = m_l2*(l_2 - a(2));

 
    I_1 = I_l1 + m_l1*(l_1 - a(1))^2 + I_m2;
    I_2 = I_l2 + m_l2*(l_2 - a(2))^2;
   
    

  pi_m(1) = a(1)*m_1 + m1_lC1 + a(1)*m_2;
  pi_m(2) = a(1)*m1_lC1 + I_1 + k_r1^2*I_m1;
  pi_m(3) = a(2)*m_2 + m2_lC2;
  pi_m(4) = a(2)*m2_lC2 + I_2;
  pi_m(5) = I_m2;

 

global a k_r1 k_r2 pi_m pi_l


  
  pi_l = pi_m;


  g = 9.81;


  K_r = diag([k_r1 k_r2]);
  F_v = K_r*diag([0.01 0.01])*K_r;
  


  Tc = 0.01;


  K_d = 750*diag([1 1]);
  K_p = 375*diag([1 1]);



  q1ini=input("Please enter q1 inital\n");
  q2ini=input("Please enter q2 inital\n");
  q_i=[q1ini q2ini];
  q1des=input("Please enter q1 desired\n");
  q2des=input("Please enter q2 desired\n");
  q_d=[q1des q2des];
  t_d=input("Duration of simulation\n");


  Ts = Tc;

run("s8_10")

y=input("Simulate? 1.Yes\n");
if(y==1)
figure(1)
hold on
plot([0:0.01:t_d],q(:,1))
figure(2)
plot([0:0.01:t_d],q(:,2))
hold off     
end