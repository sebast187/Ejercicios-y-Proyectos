clear;
clc;

%% Mínimos Cuadrados %%

matriz = readmatrix('Ejemplo_de_clase.xlsx');

x = matriz(:,1);
y = matriz(:,2);
Sx = sum(x);
Sy = sum(y);
Sxy = sum(x.*y);
Sx2 = sum(x.^2);
n = numel(x);

% calcular m
m = (Sxy-(Sx*Sy/n))/(Sx2-(Sx^2)/n);
% calcular b
b = Sy/n-m*Sx/n;
% crear la linea recta, graficándola
y1 = m.*x + b;

figure(1)
tiledlayout(1, 2)
nexttile([1, 1])
plot(x, y1)
hold on % hold on
% gráfica de dispersión
scatter(x, y,'o')
title(['m = ', num2str(m), ',  b = ', num2str(b)], 'FontSize', 18, 'FontWeight','normal')
legend('minimos cuadrados', 'dispersión')
xlabel('x', 'FontSize', 16)
ylabel('y', 'FontSize', 16)
grid on

nexttile
errorbar(x, y1, y)
title(['m = ', num2str(m), ',  b = ', num2str(b)], 'FontSize', 18, 'FontWeight','normal')
legend('gráfica de error')
xlabel('x', 'FontSize', 16)
ylabel('y', 'FontSize', 16)
grid on


%% Ejercicio 1 %%

matriz = readmatrix('PuntosXY.csv');

x = matriz(1,:);
y = matriz(2,:);
Sx = sum(x);
Sy = sum(y);
Sxy = sum(x.*y);
Sx2 = sum(x.^2);
n = numel(x);

m = (Sxy-(Sx*Sy/n))/(Sx2-(Sx^2)/n);
b = Sy/n-m*Sx/n;
y1 = m.*x + b;

figure(2)
plot(x, y1, 'Color','m', 'LineWidth',2)
hold on
scatter(x, y,'o')
title(['Ejercicio 1: m = ', num2str(m), ',  b = ', num2str(b)], 'FontSize', 18, 'FontWeight','normal')
legend('minimos cuadrados', 'dispersión')
xlabel('x', 'FontSize', 16)
ylabel('y', 'FontSize', 16)
grid on


%% Ejercicio 2 %%

matriz = readmatrix('PuntosXY4.csv');

x = matriz(1,:);
y = matriz(2,:);
Sx = sum(x);
Sy = sum(y);
Sxy = sum(x.*y);
Sx2 = sum(x.^2);
n = numel(x);

m = (Sxy-(Sx*Sy/n))/(Sx2-(Sx^2)/n);
b = Sy/n-m*Sx/n;
y1 = m.*x + b;

figure(3)
plot(x, y1, 'Color','b', 'LineWidth',2)
hold on
scatter(x, y,'o')
title(['Ejercicio 2: m = ', num2str(m), ',  b = ', num2str(b)], 'FontSize', 18, 'FontWeight','normal')
legend('minimos cuadrados', 'dispersión')
xlabel('x', 'FontSize', 16)
ylabel('y', 'FontSize', 16)
grid on


%% Ejercicio 3 %%

matriz = readmatrix('PuntosXY8.csv');

x = matriz(1,:);
y = matriz(2,:);
Sx = sum(x);
Sy = sum(y);
Sxy = sum(x.*y);
Sx2 = sum(x.^2);
n = numel(x);

m = (Sxy-(Sx*Sy/n))/(Sx2-(Sx^2)/n);
b = Sy/n-m*Sx/n;
y1 = m.*x + b;

figure(4)
plot(x, y1, 'Color','g', 'LineWidth',2)
hold on
scatter(x, y,'o')
title(['Ejercicio 3: m = ', num2str(m), ',  b = ', num2str(b)], 'FontSize', 18, 'FontWeight','normal')
legend('minimos cuadrados', 'dispersión')
xlabel('x', 'FontSize', 16)
ylabel('y', 'FontSize', 16)
grid on


%% Ejercicio 4 %%

matriz = readmatrix('PuntosXY9.csv');

x = matriz(1,:);
y = matriz(2,:);
Sx = sum(x);
Sy = sum(y);
Sxy = sum(x.*y);
Sx2 = sum(x.^2);
n = numel(x);

m = (Sxy-(Sx*Sy/n))/(Sx2-(Sx^2)/n);
b = Sy/n-m*Sx/n;
y1 = m.*x + b;

figure(5)
plot(x, y1, 'Color','c', 'LineWidth',2)
hold on
scatter(x, y,'o')
title(['Ejercicio 4: m = ', num2str(m), ',  b = ', num2str(b)], 'FontSize', 18, 'FontWeight','normal')
legend('minimos cuadrados', 'dispersión')
xlabel('x', 'FontSize', 16)
ylabel('y', 'FontSize', 16)
grid on



