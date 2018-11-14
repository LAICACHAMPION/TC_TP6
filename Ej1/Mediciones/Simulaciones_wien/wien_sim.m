clear all
clearvars;
clc;

%time,Vn003,Vn006
M = csvread('wien_simula.csv');
time = M(:,1);
v_out = M(:,2);
vgs = M(:,3);


plot(time, v_out)

% xlabel('Vds (V)');
% ylabel('Ids (A)');
% legend('vgs=0.5V','vgs=0V','vgs=-0.5V', 'vgs = -1V', 'vgs = -1.5V');
