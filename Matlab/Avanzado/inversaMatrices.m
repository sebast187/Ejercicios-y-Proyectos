clc;
clear;

% Matriz de Coeficientes
mc = [3 -6 7; 8 8 -1; 3 -3 8];

% Determinante
determinante = det(mc);

if determinante ~= 0
    disp('Si puede obtener la inversa')
    inversa = inv(mc);
    vti = [20; 60; 50];
    solucion = inversa * vti;
    x1 = solucion(1);
    x2 = solucion(2);
    x3 = solucion(3);
    disp(['x1 = ', num2str(x1)])
else
    disp('La matriz no tiene inversa')
end

%%
fprintf('\nSolución:\n')
% solución de sistema de ecuaciones lineales por el método de la inversa

a = [3 -6 7; 8 8 -1; 3 -3 8]; % matriz
vector = [20; 60; 50]; % vector de términos independientes
% con inv() obtenemos la inversa de la matriz
% de igual manera pero mas exacta como se hace con a\
solucion = a\vector; % inv(a) * vector;% obtenemos los valores de las incognitas
disp (solucion)

% Comprobación
ecuacion1 = (3 * solucion(1)) - (6 * solucion(2)) + (7 * solucion(3));
ecuacion2 = (8 * solucion(1)) + (8 * solucion(2)) - (solucion(3));
ecuacion3 = (3 * solucion(1)) - (3 * solucion(2)) + (8 * solucion(3));
disp(ecuacion1)
disp(ecuacion2)
disp(ecuacion3)