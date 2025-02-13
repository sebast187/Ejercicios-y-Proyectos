clc; clear; close all;

% Definir los tres escenarios
escenarios = { ...
    struct('a', 4, 'b', 2, 'p', 3, 'q', 1, 'r', 2, 's', 2, 'x0', 4, 'y0', 1), ...
    struct('a', 4, 'b', 2, 'p', 3, 'q', 1, 'r', -2, 's', -2, 'x0', 2, 'y0', 0.5), ...
    struct('a', 3, 'b', 1, 'p', 4, 'q', 2, 'r', 6, 's', 1, 'x0', 0, 'y0', 0) ...
};

% Parámetros de simulación
h = 0.1; % Paso de tiempo
tspan = 0:h:20; % Intervalo de tiempo

% Función para calcular el sistema de ecuaciones diferenciales
richardson_model = @(x, y, a, b, p, q, r, s) [a*y - p*x + r; b*x - q*y + s];

% Resolver cada escenario por separado con Runge-Kutta 4
for i = 1:length(escenarios)
    esc = escenarios{i};
    
    % Condiciones iniciales
    x = zeros(1, length(tspan));
    y = zeros(1, length(tspan));
    x(1) = esc.x0;
    y(1) = esc.y0;
    
    % Método de Runge-Kutta de cuarto orden
    for j = 1:(length(tspan)-1)
        t = tspan(j);
        k1 = h * richardson_model(x(j), y(j), esc.a, esc.b, esc.p, esc.q, esc.r, esc.s);
        k2 = h * richardson_model(x(j) + k1(1)/2, y(j) + k1(2)/2, esc.a, esc.b, esc.p, esc.q, esc.r, esc.s);
        k3 = h * richardson_model(x(j) + k2(1)/2, y(j) + k2(2)/2, esc.a, esc.b, esc.p, esc.q, esc.r, esc.s);
        k4 = h * richardson_model(x(j) + k3(1), y(j) + k3(2), esc.a, esc.b, esc.p, esc.q, esc.r, esc.s);
        
        x(j+1) = x(j) + (k1(1) + 2*k2(1) + 2*k3(1) + k4(1)) / 6;
        y(j+1) = y(j) + (k1(2) + 2*k2(2) + 2*k3(2) + k4(2)) / 6;
    end
    
    % Graficar resultados
    figure;
    plot(tspan, x, 'b-', 'LineWidth', 2); hold on;
    plot(tspan, y, 'r--', 'LineWidth', 2);
    xlabel('Tiempo (años)');
    ylabel('Presupuesto (miles de millones de dólares)');
    legend('EE.UU.', 'Rusia');
    title(['Evolución del presupuesto - Escenario ', num2str(i)]);
    grid on;
end