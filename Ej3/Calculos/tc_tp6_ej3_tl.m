data = csvread('tc_tp6_ej3_tl.csv');
plot(data(:,1), data(:,2), 'o-', 'LineWidth', 2);
hold on;
x = [ 0, data(:,1)', 5];
plot(x, x*9/5+1, 'LineWidth', 2);
formataxes('', '$V_{IN}$ (V)', '$V_{OUT}$ (V)', 'Medici\''on', 'C\''alculo');
ax = gca;
ax.YLim = [0 11];
ax.YTick = [0 1 2 3 4 5 6 7 8 9 10 11];