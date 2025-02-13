clear all;
clc;
dt = 0.5;
xi = 0;
yi = 1;
x = [];
y = [];
tt = [];
fxy = [];
fi = 0;
for t = 0:dt:100
    fxy(end+1) = fi;
    x(end+1) = xi;
    y(end+1) = yi;
    tt(end+1) = t;
    fi = (-2 * (xi^3)) + (12 * (xi^2)) - (20 * xi) + 8.5;
    yi = yi + (dt * fi);
    xi = dt + xi;
end
tt
x
y
fxy
plot(x, y, 'r','LineWidth',3); hold on;
legend('f_{x, y} -> dt = 0.5','fontsize',16, 'FontWeight','bold');
xlabel('x','fontsize',18); ylabel('y','fontsize',16,'FontWeight','bold');