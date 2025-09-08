% Self Consistent Method
clear all;
format long e
syms G12_eff G23_eff Vf k_eff
% Volume fraction
% Vf = 0.5;
Vm = 1.0 - Vf;
% stiffness matrix of fibre
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
Gm = ZZ;
Gf = G12;
kf = E1/(3*(1-nu_21));
km = E0/(3*(1-XNU));

eqns = [(1/(2*G12_eff))-(Vf/(G12_eff-Gm))-((1-Vf)/(G12_eff-Gf))==0,(Vf*kf)/((kf+G23_eff))+(((1-Vf)*kf)/(km+G23_eff))-2*(((Vf*Gm)/(Gm-G23_eff))+((1-Vf)*Gf)/(Gf-G23_eff))== 0,k_eff-(1/((Vf/(kf+G23_eff))+((1-Vf)/(km+G23_eff))))+G23_eff ==0];
S = solve(eqns,[k*,G12_eff,G23_eff])
