% Escanear y formatear (%f) usando el delimitador como la coma
A = textscan(app.Polinomio.Value, '%f', 'Delimiter',',');

% Convertir matriz de celdas a vector de números
A = A{1};

r = funcion_raices_polinomios(A); % Llamado a la función

% Convertir el valor de app.Raices a las raices encontradas
app.Raices.Value = num2str(r);



if (app.SelecGrafica1.Value)
    f = @(x) (x.^3 - 6*(x.^2) + 11.*x - 6);
    x = -1:0.1:5;
    plot(app.Grafica, x, f(x))
    xline(app.Grafica, 0)
    yline(app.Grafica, 0)
    xlabel(app.Grafica, 'x')
    ylabel(app.Grafica, 'f(x)')
    title(app.Grafica, 'Polinomio x.^3 - 6*(x.^2) + 11.*x - 6')
    grid(app.Grafica, 'on')
    hold(app.Grafica, 'on')
    
    A = [1 -6 11 -6]; % Coeficientes función
    r = funcion_raices_polinomios(A); % Llamado a la función
    
    % Evalua las raices con el polinomio
    a = f(r);
    
    % Graficar raices
    plot(app.Grafica, r, a, 'or')


elseif (app.SelecGrafica2.Value)
    f = @(x) (x.^3 - x.^2 - (4.* x) + 4);
    x = -2:0.1:3;
    plot(app.Grafica, x, f(x))
    xline(app.Grafica, 0)
    yline(app.Grafica, 0)
    xlabel(app.Grafica, 'x')
    ylabel(app.Grafica, 'f(x)')
    title(app.Grafica, 'Polinomio x.^3 - x.^2 - (4.* x) + 4')
    grid(app.Grafica, 'on')
    hold(app.Grafica, 'on')
    
    A = [1 -1 -4 4]; % Coeficientes función
    r = funcion_raices_polinomios(A); % Llamado a la función
    
    % Evalua las raices con el polinomio
    a = f(r);
    
    % Graficar raices
    plot(app.Grafica, r, a, 'or')


elseif (app.SelecGrafica3.Value)
    f = @(x) (-x.^4 + 10*(x.^2) - 9);
    x = -3:0.1:3;
    plot(app.Grafica, x, f(x))
    xline(app.Grafica, 0)
    yline(app.Grafica, 0)
    xlabel(app.Grafica, 'x')
    ylabel(app.Grafica, 'f(x)')
    title(app.Grafica, 'Polinomio -x.^4 + 10*(x.^2) - 9')
    grid(app.Grafica, 'on')
    hold(app.Grafica, 'on')
    
    A = [-1 10 -9]; % Coeficientes función
    r = funcion_raices_polinomios(A); % Llamado a la función
    
    % Evalua las raices con el polinomio
    a = f(r);
    
    % Graficar raices
    plot(app.Grafica, r, a, 'or')


elseif (app.SelecGrafica4.Value)
    f = @(x) (2*(x.^3) + x.^2 - (13.* x) + 6);
    x = -4:0.1:4;
    plot(app.Grafica, x, f(x))
    xline(app.Grafica, 0)
    yline(app.Grafica, 0)
    xlabel(app.Grafica, 'x')
    ylabel(app.Grafica, 'f(x)')
    title(app.Grafica, '2*(x.^3) + x.^2 - (13.* x) + 6')
    grid(app.Grafica, 'on')
    hold(app.Grafica, 'on')
    
    A = [2 1 -13 6]; % Coeficientes función
    r = funcion_raices_polinomios(A); % Llamado a la función
    
    % Evalua las raices con el polinomio
    a = f(r);
    
    % Graficar raices
    plot(app.Grafica, r, a, 'or')
end



cla(app.Grafica);
title(app.Grafica, '')
ylabel(app.Grafica, 'y')
app.Polinomio.Value = '';
app.Raices.Value = '';
