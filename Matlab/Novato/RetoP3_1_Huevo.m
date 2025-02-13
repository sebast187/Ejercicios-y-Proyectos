clear all;
clc;

dt = 0.033;
y = [];
x = [];
vy = [];
tt = [];

for t = 0:dt:2.033
    yi = f_y(t);
    xi = f_x(t);
    vyi = f_vy(t);
    y(end+1) = yi;
    x(end+1) = xi;
    vy(end+1) = vyi;
    tt(end+1) = t;
end

tiledlayout(2,2)
nexttile
plot(tt, y, 'r','LineWidth',3); hold on;
legend('f_{t, y} -> dt = 0.033','fontsize',14);
xlabel('t','fontsize',14); ylabel('y','fontsize',14);
nexttile
plot(x, y, 'r','LineWidth',3); hold on;
legend('f_{x, y} -> dt = 0.033','fontsize',14);
xlabel('x','fontsize',14); ylabel('y','fontsize',14);
nexttile([1 2])
plot(tt, vy, 'r','LineWidth',3); hold on;
legend('f_{t, vy} -> dt = 0.033','fontsize',16, 'FontWeight','bold');
xlabel('t','fontsize',16); ylabel('vy','fontsize',16);


%%
function [y] = f_y(t)
y = (-2.468*(t^2))+(-2.018*t)+14.34;
end

function [x] = f_x(t)
x = (0.2799*(t^2))+(-0.03432*t)+0.06122;
end

function [vy] = f_vy(t)
vy = (1.414*(t^2))+(-7.912*t)-0.7545;
end