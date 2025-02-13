clear;
clc;

%% Método Runge-Kutta 2do Orden %%

% Ecuaciones
    % y(t + h) = y(t) + h * f(t + h/2, y + h/2 * f(t, y))
    % % %
    % k1 = h * f(x, y)
    % k2 = h * f(x + h/2, y + k1/2)
    % y(x + h) = y(x) + k2

% Pasos
    % 1. Establecer función anónima (crear en archivo 1)
    % 2. Valores iniciales para a, b, y0, h (crear en archivo 1)
    % 3. Llamado a la función RK2 (crear en archivo 1)
    % (crear en el archivo 2)
    % % %
    % 3. Crear función RK2 que reciba los parámetros del paso 1 y 2, como salida devuelva [x,y]
        % 3.1 Crear vector x de a hasta b con incremento h
        % 3.2 Obtener el largo de x
        % 3.3 Crear un vector ‘y’ de ceros de longitud obtenida en el 3.2
        % 3.4 Guardar en la primera posición de ‘y’ el valor de y0
        % 3.5 Iniciar for de 1 hasta longitud de x - 1
        % 3.5.1 Calcular eq 1
        % 3.5.2 Calcular eq 2
        % 3.5.3 Calcular eq 3
        % 3.9 Fin del for
    % 4. Fin de la función
    % 5. Llamado a la función Euler (crear en archivo 1)

%% Ejercicio 1:
f = @(t, x) (t / sqrt(1 + t.^2));

a = 0;
b = 3.5;
y0 = 10;
h = 0.1;

[t1, x1] = funcion_Rk2(f, a, b, y0, h);
[t2, x2] = funcion_euler(f, a, b, y0, h);

figure(1)
plot(t1, x1, 'or', 'LineWidth',2); hold on;
plot(t2, x2, '-b', 'LineWidth',1); hold on;
title('Ejercicio 1')
legend('Runge-Kutta', 'Euler')
xlabel('tiempo')
ylabel('x')
grid on
axis([t1(1) t1(end) x1(1) x1(end)])


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
xlabel('x')
ylabel('y')
grid on
axis([x1(1) x1(end) y1(1) y1(end)])


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
axis([t1(1) t1(end) y1(1) y1(end)])


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

