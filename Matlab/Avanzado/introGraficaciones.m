clear;
clc;

%% Intro a Graficaciones %%

%% Funciones %%

% plot()
    % Permite graficar en dos dimensiones (x,y)

% plot3()
    % Permite crear una gráfica en 3D (x,y,z)

% comet()
    % muestra un gráfico de cometa del vector y vs el vector x

% comet3()
    % comet3 (x, y, z) muestra un gráfico de cometa de la curva a través de
    % los puntos [x (i), y (i), z (i)]

% rectangle()
    % rectangle('Position', [x, y, width, height]) crea un rectángulo en
    % coordenadas 2-D, los primeros dos datos marcan el inicio del
    % rectángulo, los dos siguientes el ancho y alto respectivamente.

% meshgrid()
    % [X, Y] = meshgrid(x, y) Devuelve coordenadas de cuadrícula 2-D basadas
    % en las coordenadas contenidas en los vectores x, y. X es una matriz
    % en la que cada fila es una copia de x, Y es una matriz en la que cada
    % columna es una copia de y. La cuadrícula representada por las
    % coordenadas X y Y tiene length(y) filas y length(x) columnas.

% fsurf()
    % fsurf(f, [xmin, xmax, ymin, ymax]) La función fsurf traza una
    % superficie 3D especificada por una función de dos variables. F es una
    % función y los intervalos en de x, y. Por defecto son [-5 5 -5 5]


% isosurface()
    % isosurface(X, Y, Z, V, isovalue) Esta función se utiliza para
    % visualizar una superficie tridimensional definida por una matriz
    % tridimensional. Esta función crea una malla tridimensional que
    % representa una superficie en el espacio tridimensional, donde los
    % puntos en la malla están determinados por los valores en la matriz
    % tridimensional. X, Y, Z con matrices tridimensionales, V es la matriz
    % tridimensional que contiene la ecuación, isovalue es el valor en la
    % matriz V que define la superficie a visualizar.

% quiver()
    % quiver(x,y,u,v) traza los vectores como flechas en las coordenadas
    % especificadas en cada par de elementos correspondiente en x y y. Las
    % matrices x, y, u y v deben ser del mismo tamaño y contener los
    % componentes de posición y velocidad correspondientes. Sin embargo, x
    % y y también pueden ser vectores. 
    % Es útil para visualizar la dirección y la magnitud de un vector en
    % cada punto de una malla de coordenadas.

% Funciones anónimas
    % Sintaxis: @(argumentos) expresión




%% Ejemplo 1: Cuadrática

x = -10:0.01:10;% vector dominio de la función

y = x.^2;% función cuadrática
% La notación .^ indica que la operación de exponenciación se
% realiza elemento por elemento del vector x

y2 = 2 * x.^2;% funcion cuadrática

tiledlayout(2,1)
nexttile
plot(x, y, 'r', 'LineWidth',2)% gráfica original

%hold on
%plot(x, y2)

title('Curva ecuación cuadrática')
xlabel('x')
ylabel('-<')
%legend('x.^2', '2 * x.^2')


%% Ejemplo 2: Senoidal
x = -10:0.01:10;
y = sin(x);

nexttile
plot(x, y, 'LineWidth',2)
title('Curva ecuación senoidal')
xlabel('x')
ylabel('-<')