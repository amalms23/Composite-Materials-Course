% Mori_Tanaka
clear all;
format long e
% Volume fraction
   Vf = 0.5;
   Vm = 1.0 - Vf;
% Now calculate the stiffness matrix of fibre
% Fibre is transversely isotropic with following properties in MPa
  E1 = 80*1000;
  E2 = 80*1000;
  E3 = E2;
%
  G12 = 33.33*1000;
  G13 = 33.33*1000;
%
  G23 = 33.33*1000;
%  
  nu_12 = 0.2;
  nu_13 = nu_12;
%  
  nu_23 = E2/(2.0 * G23) - 1.0;
%
  nu_21 = nu_12 * E2/E1;
  nu_31 = nu_13 * E3/E1;
  nu_32 = nu_23 * E3/E2;
% Initialization
  s = zeros(6,6);
  Cf = zeros(6,6);
  Cm = zeros(6,6);
%  
    s(1,1)=1.0/E1;
    s(2,2)=1.0/E2;
    s(3,3)=1.0/E3;
%    
    s(1,2)=-nu_21/E2;
    s(1,3)=-nu_31/E3;
%    
    s(2,1)=-nu_21/E2;
    s(2,3)=-nu_32/E3;
%    
    s(3,1)=-nu_13/E1; 
    s(3,2)=-nu_23/E2;
% Following order is according order in Abaqus
    s(4,4)=1.0/G12;
    s(5,5)=1.0/G13;
    s(6,6)=1.0/G23;
    Cf = inv(s)
% Calculate the stiffness matrix of matrix
% Matrix is isotropic with following properties
  E0 = 3.35*1000;
  XNU = 0.35;
%  
     XX = E0 * (1.0 - XNU)/((1.0 - 2.0 * XNU)*(1.0 + XNU));
     YY = E0 * XNU/((1.0 - 2.0 * XNU)*(1.0 + XNU));
     ZZ = E0 /(2.0 * (1.0 + XNU));
%
            for I = 1:3
               for J = 1:3
                  Cm(I,J) = YY;
               end
               Cm(I,I) = XX;
               Cm(I+3,I+3) = ZZ;
            end
kf = E1/(3*(1-nu_21));

k = (Vf*kf*(km+mm)+Vm*km*(kf+mm))/(Vf*(km+mm)+Vm*(kf+mm))

l = (Vf*lf*(km+mm)+Vm*lm*(kf+mm))/(Vf*(km+mm)+Vm*(kf+mm))

n = Vm*nm+Vf*nf+(1-Vf*lf-Vm*lm)*((lf-lm)/(kf-mm))

m = (mf*mm*(kf+2*mm)+km*mm*(Vf*mf+Vm*mm))/(km*mm+(km+2*mm)*(Vf*mm+Vm*mf))

p = (2*Vf*pm*pf+Vm*(pm*pf+pm^2))/(2*Vf*pm+Vm*(pf+pm))

Et = 4*k*m/(k+q*m)
q = 1+(4*k*nu_l^2)/El
nu_t = (k-q*m)/(k+q*m)
Gt = Et/(2*(1+nu_t))





