clc;
clear all;

%% Ejercicio de Prueba:
f1 = @(t, x, y) (t - y + sin(x));
f2 = @(t, x, y) (t + y - sin(x));

ti = 4;
tf = 6;
y0 = -0.1;
x0 = 0.1;
h = 0.1;

[t1, x1, y1, k] = funcion_ED_Rk4(f1, f2, ti, tf, x0, y0, h);

y = @(t) (1.5*exp(-t) + 0.5*sin(t) - 0.5*cos(t));
x = @(t) (1.5*exp(-t) - 0.5*sin(t) + 0.5*cos(t));
t = ti:h:tf;

figure(1)
plot(t1, y1, 'or', 'LineWidth',2); hold on;
plot(t1, x1, 'ob', 'LineWidth',2); hold on;
plot(t, y(t), '-o', 'LineWidth',1); hold on;
plot(t, x(t), '-p', 'LineWidth',1); hold on;
title('Ejercicio de Prueba (t, x, y)', 'FontSize', 18)
legend('Runge-Kutta 4to Orden y(t)', 'Runge-Kutta 4to Orden x(t)', 'Exacta y(t)', 'Exacta x(t)')
xlabel('t')
ylabel('x, y')
grid on

t = t';
Aproximada_1 = y1';
Exacta_1 = y(t);
Diferencia_1 = Aproximada_1 - Exacta_1;

tabla_1 = table(t, Aproximada_1, Exacta_1, Diferencia_1);
fprintf('\t\t\tTabla 1: y(t)\n\n')
disp(tabla_1)


Aproximada_2 = x1';
Exacta_2 = x(t);
Diferencia_2 = Aproximada_2 - Exacta_2;

tabla_2 = table(t, Aproximada_2, Exacta_2, Diferencia_2);
fprintf('\t\t\tTabla 2: x(t)\n\n')
disp(tabla_2)


% Hacer archivo Excel:
% filename1 = 'prueba_rk4_yt.csv';
% filename2 = 'prueba_rk4_xt.csv';
% csvwrite(filename1,Exacta_1);
% csvwrite(filename2,Exacta_2);

%% Ejercicio 1:
f1x = @(t, x, y) (2*x + 4*y);
f2y = @(t, x, y) (-x + 6*y);

ti = 8;
tf = 10;
y0 = 6;
x0 = -1;
h = 0.2;

[t1, x1, y1, k] = funcion_ED_Rk4(f1x, f2y, ti, tf, x0, y0, h);

% y = @(t) (1.5*exp(-t) + 0.5*sin(t) - 0.5*cos(t));
% x = @(t) (1.5*exp(-t) - 0.5*sin(t) + 0.5*cos(t));
% t = ti:h:tf;

figure(2)
plot(t1, y1, '-or', 'LineWidth',2); hold on;
plot(t1, x1, '-ob', 'LineWidth',2); hold on;

% plot(t, y(t), '-o', 'LineWidth',1); hold on;
% plot(t, x(t), '-p', 'LineWidth',1); hold on;

title('Ejercicio 1 (t, x, y)', 'FontSize', 18)
legend('Runge-Kutta 4to Orden y(t)', 'Runge-Kutta 4to Orden x(t)')
xlabel('t')
ylabel('x, y')
grid on

% t = t';
% Aproximada_1 = y1';
% Exacta_1 = y(t);
% Diferencia_1 = Aproximada_1 - Exacta_1;
% 
% tabla_1 = table(t, Aproximada_1, Exacta_1, Diferencia_1);
% fprintf('\t\t\tTabla 1: y(t)\n\n')
% disp(tabla_1)
% 
% 
% Aproximada_2 = x1';
% Exacta_2 = x(t);
% Diferencia_2 = Aproximada_2 - Exacta_2;
% 
% tabla_2 = table(t, Aproximada_2, Exacta_2, Diferencia_2);
% fprintf('\t\t\tTabla 2: x(t)\n\n')
% disp(tabla_2)


% Hacer archivo Excel:
% filename1 = 'prueba_rk4_yt.csv';
% filename2 = 'prueba_rk4_xt.csv';
% csvwrite(filename1,Exacta_1);
% csvwrite(filename2,Exacta_2);
