clear all;
clc;
dt = 0.1;
dv = 0;
dy = 0;
a = [];
v = [];
y = [];
at = [];
vt = [];
yt = [];
tt = [];
for da = 0:0.05:5
    dv = ((dt * da) + dv);
    dy = ((dt * dv) + dy);
    a(end+1) = da;
    v(end+1) = dv;
    y(end+1) = dy;
end
for da = 4.97:-0.03:2
    dv = ((dt * da) + dv);
    dy = ((dt * dv) + dy);
    a(end+1) = da;
    v(end+1) = dv;
    y(end+1) = dy;
end
for t = 20.1:dt:25
    da = 2;
    dv = ((dt * da) + dv);
    dy = ((dt * dv) + dy);
    a(end+1) = da;
    v(end+1) = dv;
    y(end+1) = dy;
end
for t = 0:dt:25
    tt(end+1) = t;
end
at(1,:) = a;
vt(1,:) = v;
yt(1,:) = y;
at(2,:) = tt;
vt(2,:) = tt;
yt(2,:) = tt;
tt
a
v
y
tiledlayout(2,2)
nexttile
plot(at(1,:), 'c','LineWidth',2)
legend('a_{t} -> dt = 0.1','fontsize',12, 'FontWeight','bold');
xlabel('tiempo','fontsize',16); ylabel('a','fontsize',14,'FontWeight','bold');
nexttile
plot(vt(1,:), 'b','LineWidth',2)
legend('v_{t} -> dt = 0.1','fontsize',12, 'FontWeight','bold');
xlabel('tiempo','fontsize',16); ylabel('v','fontsize',14,'FontWeight','bold');
nexttile([1 2])
plot(yt(1,:), 'r','LineWidth',2)
legend('y_{t} -> dt = 0.1','fontsize',12, 'FontWeight','bold');
xlabel('tiempo','fontsize',16); ylabel('y','fontsize',14,'FontWeight','bold');