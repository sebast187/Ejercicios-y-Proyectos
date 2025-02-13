clc;
clear all;
close all;

% %% Situación Problema: Carrera Armamentista ( Prueba )
% a = 0.02;
% b = 0.015;
% p = 0.005;
% q = 0.007;
% r = 0.04;
% s = 0.03;
% 
% f1x = @(t, x, y) (a*y - p*x + r);
% f2y = @(t, x, y) (b*x - q*y + s);
% 
% ti = 1945;
% tf = 1991;
% presupuestoUSA = 15;
% presupuestoRusia = 10;
% h = 1;
% 
% [t1, x1, y1, k] = funcion_ED_Rk4(f1x, f2y, ti, tf, presupuestoUSA, presupuestoRusia, h);
% 
% % y = @(t) (1.5*exp(-t) + 0.5*sin(t) - 0.5*cos(t));
% % x = @(t) (1.5*exp(-t) - 0.5*sin(t) + 0.5*cos(t));
% % t = ti:h:tf;
% 
% figure(1)
% plot(t1, x1, '-b', 'LineWidth',2); hold on;
% plot(t1, y1, '-r', 'LineWidth',2); hold on;
% 
% % plot(t, y(t), '-o', 'LineWidth',1); hold on;
% % plot(t, x(t), '-p', 'LineWidth',1); hold on;
% 
% title('Situación Problema: Carrera Armamentista', 'FontSize', 18)
% legend('Presupuesto USA - Rk4', 'Presupuesto Rusia - Rk4')
% xlabel('año')
% ylabel('presupuesto (miles de millones de dolares)')
% grid on
% 
% % t = t';
% % Aproximada_1 = y1';
% % Exacta_1 = y(t);
% % Diferencia_1 = Aproximada_1 - Exacta_1;
% % 
% % tabla_1 = table(t, Aproximada_1, Exacta_1, Diferencia_1);
% % fprintf('\t\t\tTabla 1: y(t)\n\n')
% % disp(tabla_1)
% % 
% % 
% % Aproximada_2 = x1';
% % Exacta_2 = x(t);
% % Diferencia_2 = Aproximada_2 - Exacta_2;
% % 
% % tabla_2 = table(t, Aproximada_2, Exacta_2, Diferencia_2);
% % fprintf('\t\t\tTabla 2: x(t)\n\n')
% % disp(tabla_2)
% 
% 
% % Hacer archivo Excel:
% % filename1 = 'prueba_rk4_yt.csv';
% % filename2 = 'prueba_rk4_xt.csv';
% % csvwrite(filename1,Exacta_1);
% % csvwrite(filename2,Exacta_2);

%% Situación Problema: Carrera Armamentista ( Caso #1 )
a = 4;
b = 2;
p = 3;
q = 1;
r = 2;
s = 2;

f1x = @(t, x, y) (a*y - p*x + r);
f2y = @(t, x, y) (b*x - q*y + s);

ti = 1945;
tf = 1995;
presupuestoUSA = 4;
presupuestoRusia = 1;
h = 0.1;

[t1, x1, y1, k] = funcion_ED_Rk4(f1x, f2y, ti, tf, presupuestoUSA, presupuestoRusia, h);

figure(1)
plot(t1, x1, '-b', 'LineWidth',2); hold on;
plot(t1, y1, '--r', 'LineWidth',2); hold on;

title('Situación Problema: Carrera Armamentista ( Caso #1 )', 'FontSize', 18)
legend('Presupuesto USA - Rk4', 'Presupuesto Rusia - Rk4')
xlabel('Año')
ylabel('Presupuesto (mil millones de dls)')
grid on


%% Situación Problema: Carrera Armamentista ( Caso #2 )
a = 4;
b = 2;
p = 3;
q = 1;
r = -2;
s = -2;

f1x = @(t, x, y) (a*y - p*x + r);
f2y = @(t, x, y) (b*x - q*y + s);

ti = 1945;
tf = 1995;
presupuestoUSA = 2;
presupuestoRusia = 0.5;
h = 0.1;

[t1, x1, y1, k] = funcion_ED_Rk4(f1x, f2y, ti, tf, presupuestoUSA, presupuestoRusia, h);

figure(2)
plot(t1, x1, '-b', 'LineWidth',2); hold on;
plot(t1, y1, '--r', 'LineWidth',2); hold on;

title('Situación Problema: Carrera Armamentista ( Caso #2 )', 'FontSize', 18)
legend('Presupuesto USA - Rk4', 'Presupuesto Rusia - Rk4')
xlabel('Año')
ylabel('Presupuesto (mil millones de dls)')
grid on


%% Situación Problema: Carrera Armamentista ( Caso #3 )
a = 3;
b = 1;
p = 4;
q = 2;
r = 6;
s = 1;

f1x = @(t, x, y) (a*y - p*x + r);
f2y = @(t, x, y) (b*x - q*y + s);

ti = 1945;
tf = 1995;
presupuestoUSA = 0;
presupuestoRusia = 0;
h = 0.1;

[t1, x1, y1, k] = funcion_ED_Rk4(f1x, f2y, ti, tf, presupuestoUSA, presupuestoRusia, h);

figure(3)
plot(t1, x1, '-b', 'LineWidth',2); hold on;
plot(t1, y1, '--r', 'LineWidth',2); hold on;

title('Situación Problema: Carrera Armamentista ( Caso #3 )', 'FontSize', 18)
legend('Presupuesto USA - Rk4', 'Presupuesto Rusia - Rk4')
xlabel('Año')
ylabel('Presupuesto (mil millones de dls)')
grid on