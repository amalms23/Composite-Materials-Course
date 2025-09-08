% Voigt

clear all;
format long e
t = linspace(0,1,100);
%
% Volume fraction
syms Vf
%    Vf = 0.5;
Vm = 1.0 - Vf;
%
% Now calculate the stiffness matrix of fibre
%
%
% Fibre is transversely isotropic with following properties in MPa
%
  E1 = 80;
  E2 = 80;
  E3 = E2;
%
  G12 = 33.33;
  G13 = 33.33;
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
%
% Initialization
%
  s = zeros(6,6);
  stiff_fibre = zeros(6,6);
  stiff_matrix = zeros(6,6);
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
%
% Following order is according order in Abaqus
%
    s(4,4)=1.0/G12;
    s(5,5)=1.0/G13;
    s(6,6)=1.0/G23;
%
   stiff_fibre = inv(s);
%   
% Calculate the stiffness matrix of matrix
%
% Matrix is isotropic with following properties
%
  E0 = 3.35;
  XNU = 0.35;
%  
     XX = E0 * (1.0 - XNU)/((1.0 - 2.0 * XNU)*(1.0 + XNU));
     YY = E0 * XNU/((1.0 - 2.0 * XNU)*(1.0 + XNU));
     ZZ = E0 /(2.0 * (1.0 + XNU));
%
            for I = 1:3
               for J = 1:3
                  stiff_matrix(I,J) = YY;
               end
               stiff_matrix(I,I) = XX;
               stiff_matrix(I+3,I+3) = ZZ;
            end
stiff_matrix;

% Effective stiffness matrix

Stiff_Composite = Vf*stiff_fibre+Vm*stiff_matrix;

 s_comp = inv(Stiff_Composite);
%
    VEff_E1 = 1.0/s_comp(1,1)
    VEff_E2 = 1.0/s_comp(2,2)
    VEff_E3 = 1.0/s_comp(3,3)
%
    VEff_G12 = 1.0/s_comp(4,4)
    VEff_G13 = 1.0/s_comp(5,5)
    VHSS_G23 = 1.0/s_comp(6,6)
%
    VEff_NU12 = -s_comp(2,1) * VEff_E1
    VEff_NU21 = -s_comp(1,2) * VEff_E2
%
    VEff_NU31 = -s_comp(1,3) * VEff_E3
    VEff_NU13 = -s_comp(3,1) * VEff_E1
%
    VEff_NU23 = -s_comp(3,2) * VEff_E2
    VEff_NU32 = -s_comp(2,3) * VEff_E3



