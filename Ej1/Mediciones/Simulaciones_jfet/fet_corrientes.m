clear all
clearvars;
clc;

M = [];
M = [M csvread('vg0.5.csv')];	%1
M = [M csvread('vg0.csv')];		%2
M = [M csvread('vg-1.csv')];	%3
M = [M csvread('vg-0.5.csv')];	%4
M = [M csvread('vg-1.5.csv')];	%5
M = [M csvread('vg-2.csv')];	%6
M = [M csvread('vg-2.5.csv')];	%7
M = [M csvread('vg-3.csv')]	%8

%grafico curvas  del transistor, Ids vs Vds
i = 1;
figure;
for j =1:8
	a = [M(:,i) M(:,i+1)]
	x = a(:,1);
	y = a(:,2);
	plot(x, y)
	hold on
	i = i+2;
end 
xlabel('Vds (V)');
ylabel('Ids (A)');
legend('vgs=0.5V','vgs=0V','vgs=-0.5V', 'vgs = -1V', 'vgs = -1.5V', 'vgs = -2V', 'vgs = -2.5V', 'vgs = -3V');

%grafico curvas  del transistor, Rds vs Vds
i = 1;
figure;
for j =1:7
	a = [M(:,i) M(:,i+1)]
	x = a(:,1);
	y = x./a(:,2);
	plot(x, y)
	hold on
	i = i+2;
end 
xlabel('Vds (V)');
ylabel('Rds (ohm)');
legend('vgs = -2.5V', 'vgs = -2V', 'vgs = -1.5V', 'vgs = -1V', 'vgs = -0.5V','vgs = 0V','vgs = 0.5V');

