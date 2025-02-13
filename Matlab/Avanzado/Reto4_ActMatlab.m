clear all;
clc;

%%-- Método para 3 Dimensiones --%%
vx0 = 25 * (2 * rand() - 1);
vy0 = 25 * (2 * rand() - 1);
vz0 = 150 * rand();

% Parametros del Volcán (Modificalos para tu propio volcán)
radio = 250;
altura = 5400;

% Pos inicial
z0 = altura;
x0 = 250 * (2 * rand() - 1);
y0 = 250 * (2 * rand() - 1);

% Valores Iniciales Euler (Modificalos para diferentes resultados)
n = 1000;
tf = 100;
ti = 0;
t = linspace(ti, tf, n);
deltat = abs(t(2) - t(1));
x = x0 * ones(length(t), 1);
y = y0 * ones(length(t), 1);
z = z0 * ones(length(t), 1);
vx = vx0 * ones(length(t), 1);
vy = vy0 * ones(length(t), 1);
vz = vz0 * ones(length(t), 1);
cd = 0.1 * rand(); % Coeficiente de Fricción
m = 1; % Masa

% Aceleración
g = -9.8;
ax = 0;
ay = 0;
az = g;
ax0 = 0 * ones(length(t), 1);
ay0 = 0 * ones(length(t), 1);
az0 = g * ones(length(t), 1);


flag = 1;
if flag == 0
% Euler sin Fricción
for i = 1:length(t)
    vx(i + 1) = vx(i) + ax(i) * deltat;
    vy(i + 1) = vy(i) + ay(i) * deltat;
    vz(i + 1) = vz(i) + az(i) * deltat;
    x(i + 1) = x(i) + vx(i) * deltat;
    y(i + 1) = y(i) + vy(i) * deltat;
    z(i + 1) = z(i) + vz(i) * deltat;
end
else
% Euler con Fricción
for i = 1:length(t)
    ax(i + 1) = -cd * vx(i) / m;
    ay(i + 1) = -cd * vy(i) / m;
    az(i + 1) = g - cd * vz(i) / m;
    vx(i + 1) = vx(i) + ax(i) * deltat;
    vy(i + 1) = vy(i) + ay(i) * deltat;
    vz(i + 1) = vz(i) + az(i) * deltat;
    x(i + 1) = x(i) + vx(i) * deltat;
    y(i + 1) = y(i) + vy(i) * deltat;
    z(i + 1) = z(i) + vz(i) * deltat;
end
end

tiledlayout(2,4)
nexttile([1,2])
plot3(x, y, z, 'r','LineWidth',2); % Utiliza "view(90, 0)" para una gráfica en 2D
legend('f_{x, y, z}','fontsize',12);
xlabel('tiempo','fontsize',14); ylabel('y','fontsize',12,'FontWeight','bold');
nexttile
plot(vx, 'c','LineWidth',2);
nexttile
plot(vy, 'c','LineWidth',2);
nexttile
plot(vz, 'c','LineWidth',2);
nexttile
plot(ax, 'c','LineWidth',2);
nexttile
plot(ay, 'c','LineWidth',2);
nexttile
plot(az, 'c','LineWidth',2);