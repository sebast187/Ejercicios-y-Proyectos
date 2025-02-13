clear;
clc;

%% Método Runge-Kutta %%

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

[t, x] = funcion_ej1_Rk2(f, a, b, y0, h);

plot(t, x, '-or', 'LineWidth',0.5)
grid on
axis([t(1) t(end) x(1) x(end)])







