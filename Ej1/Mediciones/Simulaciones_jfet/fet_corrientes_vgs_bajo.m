clear all
clearvars;
clc;

M = [];
M = [M csvread('vgs-3.5.csv')];	%1
M = [M csvread('vgs-3.4.csv')];	%2
M = [M csvread('vgs-3.3.csv')];	%3
M = [M csvread('vgs-3.2.csv')];	%4
M = [M csvread('vgs-3.1.csv')];	%5

%grafico curvas  del transistor, Ids vs Vds
i = 1;
figure;
for j =1:5
	a = [M(:,i) M(:,i+1)]
	x = a(:,1);
	y = a(:,2);
	plot(x, y)
	hold on
	i = i+2;
end 
xlabel('Vds (V)');
ylabel('Ids (A)');
legend('vgs=-3.5V','vgs=-3.4V','vgs=-3.3V','vgs=-3.2V','vgs=-3.1V');

%grafico curvas  del transistor, Rds vs Vds
i = 1;
figure;
for j =1:5
	a = [M(:,i) M(:,i+1)]
	x = a(:,1);
	y = x./a(:,2);
	plot(x, y)
	hold on
	i = i+2;
end 
xlabel('Vds (V)');
ylabel('Rds (ohm)');
legend('vgs=-3.5V','vgs=-3.4V','vgs=-3.3V','vgs=-3.2V','vgs=-3.1V');


