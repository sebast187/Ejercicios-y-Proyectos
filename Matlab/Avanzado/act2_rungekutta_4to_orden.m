clear;
clc;

%% Método Runge-Kutta 4to Orden %%

% Ecuaciones
    % y(t + h) = y(t) + h * f(t + h/2, y + h/2 * f(t, y))
    % % %
    % k1 = h * f(x, y)
    % k2 = h * f(x + h / 2, y + k1 / 2)
    % k3 = h * f(x + h / 2, y + k2 / 2)
    % k4 = h * f(x + h, y + k3)
    % y(x + h) = y(x) + (1/6)*(k1 + 2*k2 + 2*k3 + k4)

% Pasos
    % 1. Establecer función anónima (crear en archivo 1)
    % 2. Valores iniciales para a, b, y0, h (crear en archivo 1)
    % 3. Llamado a la función
    % (crear en el archivo 2)
    % % %
    % 3. Crear función RK4 que reciba los parámetros del paso 1 y 2, como salida devuelva [x,y]
        % 3.1 Crear vector x de a hasta b con incremento h
        % 3.2 Obtener el largo de x
        % 3.3 Crear un vector de ceros de longitud obtenida en el 3.2
        % 3.4 Guardar en la primera posición de y el valor de y0
        % 3.5 Iniciar for de 1 hasta el largo de x
        % 3.6 Calcular eq. 1
        % 3.7 Calcular eq. 2
        % 3.8 Calcular eq. 3
        % 3.9 Calcular eq. 4
        % 3.10 Calcular eq. 5
        % 3.11 Fin del for
    % 4. Fin de la función
    % 5. Escribir ecuación exacta

%% Ejercicio 1:
f = @(x, y) (-y + sin(x));

a = 4;
b = 6;
y0 = -0.1;
h = 0.1;

[x1, y1] = funcion_Rk4(f, a, b, y0, h);

y = @(x) (1.5*exp(-x) + 0.5*sin(x) - 0.5*cos(x));
x = a:h:b;

figure(1)
plot(x1, y1, 'or', 'LineWidth',2); hold on;
plot(x, y(x), '-b', 'LineWidth',1); hold on;
title('Ejercicio 1')
legend('Runge-Kutta 4to Orden', 'Exacta')
xlabel('x')
ylabel('y')
grid on

x = x';
Aproximada = y1';
Exacta = y(x);
Diferencia = Aproximada - Exacta;

tabla = table(x, Aproximada, Exacta, Diferencia);
fprintf('\t\t\tTabla 1\n\n')
disp(tabla)

writetable(tabla, 'Ejercicio1.xlsx')


%% Ejercicio 2:
f = @(x, y) (y*tan(x) + x);

a = 0;
b = 3;
y0 = 10;
h = 0.1;

[x1, y1] = funcion_Rk4(f, a, b, y0, h);

y = @(x) (x.*tan(x) + 2*sec(x)*6 + 1);
x = a:h:b;

figure(2)
plot(x1, y1, 'or', 'LineWidth',2); hold on;
plot(x, y(x), '-b', 'LineWidth',1); hold on;
title('Ejercicio 2')
legend('Runge-Kutta 4to Orden', 'Exacta')
xlabel('x')
ylabel('y')
grid on

x = x';
Aproximada = y1';
Exacta = y(x);
Diferencia = Aproximada - Exacta;

tabla = table(x, Aproximada, Exacta, Diferencia);
fprintf('\n\t\t\tTabla 2\n\n')
disp(tabla)

writetable(tabla, 'Ejercicio2.xlsx')


%% Ejercicio 3:
f = @(x, y) (3*x/y - x*y);

a = 0;
b = 2.5;
y0 = 2;
h = 0.1;

[x1, y1] = funcion_Rk4(f, a, b, y0, h);

y = @(x) (sqrt(3 + exp(-x.^2)));
x = a:h:b;

figure(3)
plot(x1, y1, 'or', 'LineWidth',2); hold on;
plot(x, y(x), '-b', 'LineWidth',1); hold on;
title('Ejercicio 3')
legend('Runge-Kutta 4to Orden', 'Exacta')
xlabel('x')
ylabel('y')
grid on

x = x';
Aproximada = y1';
Exacta = y(x);
Diferencia = Aproximada - Exacta;

tabla = table(x, Aproximada, Exacta, Diferencia);
fprintf('\n\t\t\tTabla 3\n\n')
disp(tabla)

writetable(tabla, 'Ejercicio3.xlsx')


%% Ejercicio 4:
f = @(x, y) (y*cos(x));

a = 0;
b = 4;
y0 = 1;
h = 0.1;

[x1, y1] = funcion_Rk4(f, a, b, y0, h);

y = @(x) (exp(sin(x)));
x = a:h:b;

figure(4)
plot(x1, y1, 'or', 'LineWidth',2); hold on;
plot(x, y(x), '-b', 'LineWidth',1); hold on;
title('Ejercicio 4')
legend('Runge-Kutta 4to Orden', 'Exacta')
xlabel('x')
ylabel('y')
grid on

x = x';
Aproximada = y1';
Exacta = y(x);
Diferencia = Aproximada - Exacta;

tabla = table(x, Aproximada, Exacta, Diferencia);
fprintf('\n\t\t\tTabla 4\n\n')
disp(tabla)

writetable(tabla, 'Ejercicio4.xlsx')


