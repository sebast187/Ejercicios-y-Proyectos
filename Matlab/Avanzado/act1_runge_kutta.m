clear;
clc;

%% Método Runge-Kutta %%



%% Ejercicio 1:
f = @(t, x) (t/sqrt(1+t.^2));

a = 0;
b = 2.8;
y0 = 15;
h = 0.1;

[t1, x1] = funcion_Rk2(f, a, b, y0, h);
[t2, x2] = funcion_euler(f, a, b, y0, h);

figure(1)
plot(t1, x1, 'or', 'LineWidth',2); hold on;
plot(t2, x2, '-b', 'LineWidth',1); hold on;
title('Ejercicio 1')
legend('Runge-Kutta', 'Euler')
xlabel('tiempo')
ylabel('y')
grid on



%% Ejercicio 2:
f = @(x, y) (sin(y));

a = 0;
b = 3;
y0 = 1;
h = 0.1;

[x1, y1] = funcion_Rk2(f, a, b, y0, h);
[x2, y2] = funcion_euler(f, a, b, y0, h);

figure(2)
plot(x1, y1, 'or', 'LineWidth',2); hold on;
plot(x2, y2, '-b', 'LineWidth',1); hold on;
title('Ejercicio 2')
legend('Runge-Kutta', 'Euler')
xlabel('tiempo')
ylabel('y')
grid on




%% Ejercicio 3:
f = @(t, y) (20 + 7*sin(2*t));

a = 0;
b = 2.8;
y0 = 15;
h = 0.1;

[t1, y1] = funcion_Rk2(f, a, b, y0, h);
[t2, y2] = funcion_euler(f, a, b, y0, h);

figure(3)
plot(t1, y1, 'or', 'LineWidth',2); hold on;
plot(t2, y2, '-b', 'LineWidth',1); hold on;
title('Ejercicio 3')
legend('Runge-Kutta', 'Euler')
xlabel('tiempo')
ylabel('y')
grid on



%% Ejercicio 4:
f = @(x, y) (3*y - 4*exp(-x));

a = 0;
b = 2;
y0 = 1;
h = 0.1;

[x1, y1] = funcion_Rk2(f, a, b, y0, h);
[x2, y2] = funcion_euler(f, a, b, y0, h);

y = @(x) (exp(-x));
x = a:h:b;

figure(4)
plot(x1, y1, 'or', 'LineWidth',2); hold on;
plot(x2, y2, '-b', 'LineWidth',1); hold on;
plot(x, y(x), '-c', 'LineWidth',2); hold on;
title('Ejercicio 4')
legend('Runge-Kutta', 'Euler', 'Exacta')
xlabel('x')
ylabel('y')
grid on



%% Ejercicio 5:
f = @(t, y) (0.7*y - t.^2 + 1);

a = 1;
b = 2;
y0 = 1;
h = 0.1;

[t1, y1] = funcion_Rk2(f, a, b, y0, h);
[t2, y2] = funcion_euler(f, a, b, y0, h);

y = @(t) (1.42857*t.^2 + 4.08163*t - 4.42583*exp(0.7*t) + 4.40233);
t = a:h:b;

figure(5)
plot(t1, y1, 'or', 'LineWidth',2); hold on;
plot(t2, y2, '-b', 'LineWidth',1); hold on;
plot(t, y(t), '-c', 'LineWidth',2); hold on;
title('Ejercicio 5')
legend('Runge-Kutta', 'Euler', 'Exacta')
xlabel('tiempo')
ylabel('y')
grid on