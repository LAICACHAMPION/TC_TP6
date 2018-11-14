clear all 
clearvars;
clc;

s = tf('s');

c = 1e-9;
r1 = 2273;
r2 = 2273;
r = r1;
r3 = 106e3;
r4 = 53e3;

%faltaria hacer un hold on para mostrar el avance de los polos y ceros

figure;
betha = ((-c*r)*s)/(c^2*r^2*s^2 + 3*c*r*s + 1);
pzmap(betha)
grid on

A = 1+r3/r4;

T = A*betha;

ganancia = T/(1+T)/betha;

ganancia = simplify(ganancia);
figure;
pzmap(ganancia)
grid on;