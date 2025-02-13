clear all;
clc;
% Parámetros iniciales
v0 = 20; % m/s
theta = 45 * (pi / 180); % 45 grados convertidos a radianes
g = 9.81; % m/s^2, aceleración debido a la gravedad
tmax = 2 * v0 * sin(theta) / g; % tiempo total de vuelo
dt = 0.01; % Paso de tiempo

% Valores iniciales
vx0 = v0 * cos(theta);
vy0 = v0 * sin(theta);

% Ecuaciones de movimiento parabólico
t = 0:dt:tmax;
x = vx0 * t;
y = vy0 * t - 0.5 * g * t.^2;

% Método de Euler
xe = zeros(1, length(t));
ye = zeros(1, length(t));
vxe = vx0;
vye = vy0;
for n = 1:length(t) - 1
    xe(n+1) = xe(n) + vxe * dt;
    ye(n+1) = ye(n) + vye * dt;
    vye = vye - g * dt;
end

% Graficando
figure;

% Movimiento parabólico
subplot(2, 1, 1);
plot(x, y, 'r-');
title('Movimiento Parabólico');
legend('Mov. Parabólico');
xlabel('Distancia en x (m)');
ylabel('Altura en y (m)');

% Método de Euler
subplot(2, 1, 2);
plot(xe, ye, 'b-');
title('Método de Euler');
legend('Euler');
xlabel('Distancia en x (m)');
ylabel('Altura en y (m)');

% Velocidad para el movimiento parabólico
vx = vx0 * ones(1, length(t));
vy = vy0 - g * t;

% Aceleración para el movimiento parabólico (es constante)
ax = zeros(1, length(t));
ay = -g * ones(1, length(t));

% Velocidad y aceleración para el método de Euler
vxe_array = vxe * ones(1, length(t));
vye_array = vy0 - g * t;
axe_array = zeros(1, length(t));
aye_array = -g * ones(1, length(t));

% Graficando velocidad
figure;
% Velocidad en x
subplot(2, 2, 1);
plot(t, vx, 'r-', t, vxe_array, 'b-');
title('Velocidad en x');
xlabel('Tiempo (s)');
ylabel('Velocidad (m/s)');
legend('Mov. Parabólico', 'Euler');

% Velocidad en y
subplot(2, 2, 2);
plot(t, vy, 'r-', t, vye_array, 'b-');
title('Velocidad en y');
xlabel('Tiempo (s)');
ylabel('Velocidad (m/s)');
legend('Mov. Parabólico', 'Euler');

% Graficando aceleración
% Aceleración en x
subplot(2, 2, 3);
plot(t, ax, 'r-', t, axe_array, 'b-');
title('Aceleración en x');
xlabel('Tiempo (s)');
ylabel('Aceleración (m/s^2)');
legend('Mov. Parabólico', 'Euler');

% Aceleración en y
subplot(2, 2, 4);
plot(t, ay, 'r-', t, aye_array, 'b-');
title('Aceleración en y');
xlabel('Tiempo (s)');
ylabel('Aceleración (m/s^2)');
legend('Mov. Parabólico', 'Euler');