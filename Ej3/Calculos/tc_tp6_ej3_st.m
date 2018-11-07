data = csvread('tc_6_3_st.csv');
plot(data(:,1), data(:,2), 'o-', 'LineWidth', 2);
formataxes('', '$V_{IN}$ (V)', '$V_{OUT}$ (V)');
ax = gca;