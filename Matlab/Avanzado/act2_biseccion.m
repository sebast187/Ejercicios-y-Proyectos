                        %% Actividad 2 %%
% Sebastián Quevedo
% A01722937

clear;
clc;

%% Ejemplo: Método Bisección
f = @(x) (-1/10 * x.^2 + 3);
x = -10:1:10;
y = f(x);

figure(1)
plot(x,y)
xline(0)
yline(0)
xlabel('x')
ylabel('f(x)')
title('Ejemplo: Gráfica (-1/10*x.^2 + 3)')
grid on

% Definimos Intervalos
xi = 4;
xf = 8;
xline(xi, '--r','xi') % Agregamos una línea punteada a la gráfica en xi
xline(xf, '--r','xf') % Agregamos una línea punteada a la gráfica en xf
raiz = NaN;

% Comprobamos el teorema de Bolzano; f(xi) * f(xf) < 0
if f(xi) * f(xf) < 0

    for iteraciones = 1:15

        fprintf('\n\n')
        disp(['Iteración: ', num2str(iteraciones)])
        
        % Buscar la media
        xa = (xi + xf) / 2;
        fxi_fxa = f(xi) * f(xa);

        % Evaluar cuál rango usar
        if fxi_fxa < 0

            % Usar rango debajo de la media
            xf = xa;

            disp(['xi: ', num2str(xi)])
            disp(['xf: ', num2str(xf)])

        else

            % Usar rango sobre la media
            xi = xa;

            disp(['xi: ', num2str(xi)])
            disp(['xf: ', num2str(xf)])

        end

        fprintf('\n')

        % Error del valor obtenido
        disp(['Error: ', num2str(f(xa))])

    end
    
    fprintf('\n\n')

    % Al terminar el ciclo, calculamos la raiz
    raiz = f(xa);
    disp(['La raiz es: ', num2str(raiz)])

    % Usar el valor de x obtuvido por la media del rango final
    xa = (xi + xf) / 2;
    valor_x = xa;
    disp(['Valor de x encontrada: ', num2str(valor_x)])
    
    disp(['Iteraciones realizadas: ', num2str(iteraciones)])

    hold on;
    % Graficar un punto en los valores encontrados
    plot(valor_x, raiz, 'o')

else

    fprintf('Valores no coinciden con el rango')

end


%% Actividad 2: Ecuación 1
f = @(x) (x - cos(x));
x = -10:0.1:10;
y = f(x);

figure(2)
plot(x,y)
xline(0)
yline(0)
xlabel('x')
ylabel('f(x)')
title('Act. 2 - Ecuación 1: Gráfica (x - cos(x))', 'FontWeight','bold')
grid on

% Intervalos Seleccionados
xi = -2;
xf = 4;
xline(xi, '--r','xi')
xline(xf, '--r','xf')
raiz = NaN;

if f(xi) * f(xf) < 0

    for iteraciones = 1:10    
        xa = (xi + xf) / 2;
        fxi_fxa = f(xi) * f(xa);

        if fxi_fxa < 0
            xf = xa;

        else
            xi = xa;

        end

    end
    
    fprintf('\n\n\nAct. 2 - Ecuación 1:\n\n')

    raiz = f(xa);
    disp(['La raiz es: ', num2str(raiz)])

    xa = (xi + xf) / 2;
    valor_x = xa;
    disp(['Valor de x encontrada: ', num2str(valor_x)])
    
    disp(['Iteraciones realizadas: ', num2str(iteraciones)])

    hold on;
    plot(valor_x, raiz, 'o')

else

    fprintf('Valores no coinciden con el rango')

end


%% Actividad 2: Ecuación 2
f = @(x) ((x.^2) .* sin(x));
x = -10:0.1:10;
y = f(x);

figure(3)
plot(x,y)
xline(0)
yline(0)
xlabel('x')
ylabel('f(x)')
title('Act. 2 - Ecuación 2: Gráfica ((x.^2) .* sin(x))', 'FontWeight','bold')
grid on

% Intervalos Seleccionados
xi = -9;
xf = -6;
xline(xi, '--r','xi')
xline(xf, '--r','xf')
raiz = NaN;

if f(xi) * f(xf) < 0

    for iteraciones = 1:10    
        xa = (xi + xf) / 2;
        fxi_fxa = f(xi) * f(xa);

        if fxi_fxa < 0
            xf = xa;

        else
            xi = xa;

        end

    end
    
    fprintf('\n\n\nAct. 2 - Ecuación 2:\n\n')

    raiz = f(xa);
    disp(['La raiz es: ', num2str(raiz)])

    xa = (xi + xf) / 2;
    valor_x = xa;
    disp(['Valor de x encontrada: ', num2str(valor_x)])
    
    disp(['Iteraciones realizadas: ', num2str(iteraciones)])

    hold on;
    plot(valor_x, raiz, 'o')

else

    fprintf('\n\nValores no coinciden con el rango\n')

end


%% Actividad 2: Ecuación 3
f = @(x) (x .* log(x));
x = -10:0.1:10;
y = f(x);

figure(4)
plot(x,y)
xline(0)
yline(0)
xlabel('x')
ylabel('f(x)')
title('Act. 2 - Ecuación 3: Gráfica (x .* log(x))', 'FontWeight','bold')
grid on

% Intervalos Seleccionados
xi = 0.5;
xf = 4;
xline(xi, '--r','xi')
xline(xf, '--r','xf')
raiz = NaN;

if f(xi) * f(xf) < 0

    for iteraciones = 1:10    
        xa = (xi + xf) / 2;
        fxi_fxa = f(xi) * f(xa);

        if fxi_fxa < 0
            xf = xa;

        else
            xi = xa;

        end

    end
    
    fprintf('\n\n\nAct. 2 - Ecuación 3:\n\n')

    raiz = f(xa);
    disp(['La raiz es: ', num2str(raiz)])

    xa = (xi + xf) / 2;
    valor_x = xa;
    disp(['Valor de x encontrada: ', num2str(valor_x)])
    
    disp(['Iteraciones realizadas: ', num2str(iteraciones)])

    hold on;
    plot(valor_x, raiz, 'o')

else

    fprintf('\n\nValores no coinciden con el rango\n')

end


%% Actividad 2: Ecuación 4
f = @(x) (exp(0.3 .* x) - x.^2);
x = -10:0.1:10;
y = f(x);

figure(5)
plot(x,y)
xline(0)
yline(0)
xlabel('x')
ylabel('f(x)')
title('Act. 2 - Ecuación 4: Gráfica (exp(0.3 .* x) - x.^2)', 'FontWeight','bold')
grid on

% Intervalos Seleccionados
xi = -5;
xf = 1;
xline(xi, '--r','xi')
xline(xf, '--r','xf')
raiz = NaN;

if f(xi) * f(xf) < 0

    for iteraciones = 1:10    
        xa = (xi + xf) / 2;
        fxi_fxa = f(xi) * f(xa);

        if fxi_fxa < 0
            xf = xa;

        else
            xi = xa;

        end

    end
    
    fprintf('\n\n\nAct. 2 - Ecuación 4:\n\n')

    raiz = f(xa);
    disp(['La raiz es: ', num2str(raiz)])

    xa = (xi + xf) / 2;
    valor_x = xa;
    disp(['Valor de x encontrada: ', num2str(valor_x)])
    
    disp(['Iteraciones realizadas: ', num2str(iteraciones)])

    hold on;
    plot(valor_x, raiz, 'o')

else

    fprintf('\n\nValores no coinciden con el rango\n')

end


%% Actividad 2: Ecuación 5
f = @(x) ((2 * cos(x)) - (sqrt(x) / 2));
x = -10:0.1:10;
y = f(x);

figure(6)
plot(x,y)
xline(0)
yline(0)
xlabel('x')
ylabel('f(x)')
title('Act. 2 - Ecuación 5: Gráfica ((2 * cos(x)) - (sqrt(x) / 2))', 'FontWeight','bold')
grid on

% Intervalos Seleccionados
xi = 2;
xf = 6;
xline(xi, '--r','xi')
xline(xf, '--r','xf')
raiz = NaN;

if f(xi) * f(xf) < 0

    for iteraciones = 1:10    
        xa = (xi + xf) / 2;
        fxi_fxa = f(xi) * f(xa);

        if fxi_fxa < 0
            xf = xa;

        else
            xi = xa;

        end

    end
    
    fprintf('\n\n\nAct. 2 - Ecuación 5:\n\n')

    raiz = f(xa);
    disp(['La raiz es: ', num2str(raiz)])

    xa = (xi + xf) / 2;
    valor_x = xa;
    disp(['Valor de x encontrada: ', num2str(valor_x)])
    
    disp(['Iteraciones realizadas: ', num2str(iteraciones)])

    hold on;
    plot(valor_x, raiz, 'o')

else

    fprintf('\n\nValores no coinciden con el rango\n')

end