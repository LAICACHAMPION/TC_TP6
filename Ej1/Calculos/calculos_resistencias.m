clc;
clearvars;

d = 0.1; %volt desplazamiento de relacion en resistencias
r = 0.54; %kohm 5.5	resistencia transistor

% r2/r1 = 2 + d
% r2/(r1+resistencia_transistor) = 2 - d

a = 2 + d;
b = 2 - d;
c = a + b;

r1 = r*b / (2*d)	%en kohm
r2 = c*r1* ( r1 + r ) / ( 2*r1 + r )	%en kohm

