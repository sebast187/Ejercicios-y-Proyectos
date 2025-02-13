clear all;
clc;
v0 = 20;
theta = 45;
g = 9.81;
tmax = 2 * v0 * sind(theta) / g;
dt = 0.1;

vx0 = v0 * cosd(theta);
vy0 = v0 * sind(theta);

t = 0:dt:tmax;
x = vx0 * t;
y = vy0 * t - 0.5 * g * t.^2;

xe = zeros(1, length(t));
ye = zeros(1, length(t));
vxe = vx0;
vye = vy0;

for n = 1:length(t) - 1
    xe(n+1) = xe(n) + vxe * dt;
    ye(n+1) = ye(n) + vye * dt;
    vye = vye - g * dt;
end

vx = vx0 * ones(1, length(t));
vy = vy0 - g * t;

ax = zeros(1, length(t));
ay = -g * ones(1, length(t));

vvxe = vxe * ones(1, length(t));
vvye = vy0 - g * t;
vaxe = zeros(1, length(t));
vaye = -g * ones(1, length(t));

figure;

subplot(2, 1, 1);
plot(x, y, 'r-');
title('Movimiento Parabólico');
legend('Mov. Parabólico');
xlabel('x');
ylabel('y');

subplot(2, 1, 2);
plot(xe, ye, 'b-');
title('Método de Euler');
legend('Euler');
xlabel('x');
ylabel('y');

figure;
subplot(2, 2, 1);
plot(t, vx, 'r-', t, vy, 'b-');
title('Velocidad- Mov. Parabólico');
xlabel('Tiempo');
ylabel('Velocidad');
legend('x', 'y');

subplot(2, 2, 2);
plot(t, ax, 'r-', t, ay, 'r-');
title('Aceleración- Mov. Parabólico');
xlabel('Tiempo');
ylabel('Aceleración');
legend('x', 'y');

subplot(2, 2, 3);
plot(t, vvxe, 'r-', t, vvye, 'b-');
title('Velocidad- Euler');
xlabel('Tiempo');
ylabel('Velocidad (m/s)');
legend('x', 'y');

subplot(2, 2, 4);
plot(t, vaxe, 'b-', t, vaye, 'b-');
title('Aceleración- Euler');
xlabel('Tiempo');
ylabel('Aceleración');
legend('x', 'y');