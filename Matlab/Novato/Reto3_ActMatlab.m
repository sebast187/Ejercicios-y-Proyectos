clear all;
clc;
dt = 0.1;
dv = 0;
dy = 0;
da = 0;
a = [];
v = [];
y = [];
tt = [];
for t = 0:dt:(2*pi)+0.1
    da = exp(sin(t)) - 1;
    dv = ((dt * da) + dv);
    dy = ((dt * dv) + dy);
    a(end+1) = da;
    v(end+1) = dv;
    y(end+1) = dy;
    tt(end+1) = t;
end
pi2_t = string(round(tt(end),2)) + 's: cuando t = 2 * pi'
pi2_y = string(round(y(end),2)) + 'm: cuando t = 2 * pi'
pi2_v = string(round(v(end),2)) + 'm/s: cuando t = 2 * pi'
pi2_a = string(round(a(end),4)) + 'm/s^2: cuando t = 2 * pi'

dt = 0.1;
dv = 0;
dy = 0;
da = 0;
a = [];
v = [];
y = [];
tt = [];
for t = 0:dt:25
    da = exp(sin(t)) - 1;
    dv = ((dt * da) + dv);
    dy = ((dt * dv) + dy);
    a(end+1) = da;
    v(end+1) = dv;
    y(end+1) = dy;
    tt(end+1) = t;
end
tt
y
v
a
tiledlayout(2,2)
nexttile
plot(tt, y, 'r','LineWidth',2);
legend('y_{t} -> dt = 0.1','fontsize',12, 'FontWeight','bold');
xlabel('tiempo','fontsize',14); ylabel('y','fontsize',12,'FontWeight','bold');
nexttile
plot(tt, v, 'b','LineWidth',2);
legend('v_{t} -> dt = 0.1','fontsize',12, 'FontWeight','bold');
xlabel('tiempo','fontsize',14); ylabel('v','fontsize',12,'FontWeight','bold');
nexttile ([1, 2])
plot(tt, a, 'c','LineWidth',2);
legend('a_{t} -> dt = 0.1','fontsize',12, 'FontWeight','bold');
xlabel('tiempo','fontsize',14); ylabel('a','fontsize',12,'FontWeight','bold');