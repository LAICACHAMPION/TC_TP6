clearvars;
data = csvread('tc_6_3_st.csv');
x = data(:,1);
y = data(:,2);
tl = [inf, 0];
tr = [0, 0];
bl = [inf, inf];
br = [0, inf];

for i=1:size(x,1)
    if y(i) > 0
        if x(i) < tl(1)
            tl(1) = x(i);
            tl(2) = y(i);
        end
        if x(i) > tr(1)
            tr(1) = x(i);
            tr(2) = y(i);
        end
    else
        if x(i) < bl(1)
            bl(1) = x(i);
            bl(2) = y(i);
        end
        if x(i) > br(1)
            br(1) = x(i);
            br(2) = y(i);
        end
    end
end
quiver(tl(1), tl(2), tr(1)-tl(1), tr(2)-tl(2), 0,'Color', 'r', 'LineWidth', 3);

hold on;

quiver(tr(1), tr(2), br(1)-tr(1), br(2)-tr(2), 0,'Color', 'r', 'LineWidth', 3);
quiver(br(1), br(2), bl(1)-br(1), bl(2)-br(2), 0,'Color', 'r', 'LineWidth', 3);
quiver(bl(1), bl(2), tl(1)-bl(1), tl(2)-bl(2), 0,'Color', 'r', 'LineWidth', 3);




plot(data(:,1), data(:,2), '-o', 'LineWidth', 2, 'Color', 'b');
formataxes('', '$V_{TR}$ (V)', '$V_{SQ}$ (V)');
ax = gca;
ax.XLim = [-6 5];
ax.XTick = [ax.XTick 5];
