clear;
clc;

% Button pushed function: Ejemplo
syms x
f = x^2 - 4*x + 2;
a = -2:0.1:6;
y = double(subs(f, a));
fdx = diff(f);
xi = 6;
tolerancia = 1e-6;

% Llamada de función newton raphson
[raiz, xi, iter] = funcion_newton_raphson(f, fdx, xi, tolerancia);

% Gráfica en la aplicación
title(app.Grafica, ['El valor de x es = ' num2str(xi), '  Iteraciones = ' num2str(iter)])
plot(app.Grafica, a, y, xi, raiz, 'or')
xline(app.Grafica, 0)
yline(app.Grafica, 0)
grid(app.Grafica, "on")
ylabel(app.Grafica, 'f(x) = x^2 - 4*x + 2')
xlabel(app.Grafica, 'x')


% Button pushed function: Ejercicio1
syms x
f = (-1/10)*(x^2) + 3;
a = -15:0.1:15;
y = double(subs(f, a));
fdx = diff(f);
xi = 15;
tolerancia = 1e-6;

% Llamada de función newton raphson
[raiz, xi, iter] = funcion_newton_raphson(f, fdx, xi, tolerancia);

% Gráfica en la aplicación
title(app.Grafica, ['El valor de x es = ' num2str(xi), '  Iteraciones = ' num2str(iter)])
plot(app.Grafica, a, y, xi, raiz, 'or')
xline(app.Grafica, 0)
yline(app.Grafica, 0)
grid(app.Grafica, "on")
ylabel(app.Grafica, 'f(x) = (-1/10)*(x^2) + 3')
xlabel(app.Grafica, 'x')

% Button pushed function: Ejercicio2
syms x
f = cos(x) - x^3;
a = -3:0.1:4;
y = double(subs(f, a));
fdx = diff(f);
xi = 4;
tolerancia = 1e-6;

% Llamada de función newton raphson
[raiz, xi, iter] = funcion_newton_raphson(f, fdx, xi, tolerancia);

% Gráfica en la aplicación
title(app.Grafica, ['El valor de x es = ' num2str(xi), '  Iteraciones = ' num2str(iter)])
plot(app.Grafica, a, y, xi, raiz, 'or')
xline(app.Grafica, 0)
yline(app.Grafica, 0)
grid(app.Grafica, "on")
ylabel(app.Grafica, 'f(x) = cos(x) - x^3')
xlabel(app.Grafica, 'x')

% Button pushed function: Ejercicio3
syms x
f = x^3 + x + 16;
a = -6:0.1:6;
y = double(subs(f, a));
fdx = diff(f);
xi = 6;
tolerancia = 1e-6;

% Llamada de función newton raphson
[raiz, xi, iter] = funcion_newton_raphson(f, fdx, xi, tolerancia);

% Gráfica en la aplicación
title(app.Grafica, ['El valor de x es = ' num2str(xi), '  Iteraciones = ' num2str(iter)])
plot(app.Grafica, a, y, xi, raiz, 'or')
xline(app.Grafica, 0)
yline(app.Grafica, 0)
grid(app.Grafica, "on")
ylabel(app.Grafica, 'f(x) = x^3 + x + 16')
xlabel(app.Grafica, 'x')

% Button pushed function: Ejercicio4
syms x
f = x^4 + 2*x - 1;
a = -2:0.1:4;
y = double(subs(f, a));
fdx = diff(f);
xi = 4;
tolerancia = 1e-6;

% Llamada de función newton raphson
[raiz, xi, iter] = funcion_newton_raphson(f, fdx, xi, tolerancia);

% Gráfica en la aplicación
title(app.Grafica, ['El valor de x es = ' num2str(xi), '  Iteraciones = ' num2str(iter)])
plot(app.Grafica, a, y, xi, raiz, 'or')
xline(app.Grafica, 0)
yline(app.Grafica, 0)
grid(app.Grafica, "on")
ylabel(app.Grafica, 'f(x) = x^4 + 2*x - 1')
xlabel(app.Grafica, 'x')




