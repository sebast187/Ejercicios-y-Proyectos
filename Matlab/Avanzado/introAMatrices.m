%% Matrices (primera matriz)
clc;
clear;


B = [2 3 4; 4, 5, 6; 3, 1, 4; 7 8 2];
% Se pueden usar espacios o comas para separar valores

fprintf('\n')
disp(B)
% 'disp' (display) muestra una variable, 'fprintf' muestra lo que pongas adentro

[r, c] = size(B);
disp(['cantidad de renglones: ', num2str(r)])
disp(['cantidad de columnas: ', num2str(c)])

fprintf('\n')


%% Entrar a los elementos con una matriz
%clc;
%clear;

B = [2 3 4; 
     4 5 6; 
     3 1 4; 
     7 8 2];
% Lo puse así para visualizarlo más fácil

x = B(3, 2);
disp(x)

pause(2)
% Se detiene la ejecucion por 2 segundos

z = B(2, 3);
disp(z)

pause(2)

d = B(1:2, 3);
disp(d)

pause(2)

e = B(1:2, 2:3);
disp(e)


%% Modificando y viendo matrices

pause(2)

matriz = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];
%  1  2  3  4
%  5  6  7  8
%  9 10 11 12
% 13 14 15 16

matriz(:,2)
% Accede a todos los elementos de la columna 2
% ':' significa todos los valores

pause(1)

matriz(:,end)
% Todos los elementos de la >última< columna

pause(1)

matriz(1:3, 2:4)

pause(1)

matriz(:,:)


matriz(1,:) = [];
% Quita todo el renglón
disp(matriz)

matriz(2,2) = 100;
disp(matriz)

pause(2)

% transpuesta o girar la matriz, tus renglones
% se vuelven columnas y vice-versa
disp(matriz')


%% Inicializar matriz en ceros 
%clc;
%clear;

nueva_matriz = zeros(3, 4);
disp(nueva_matriz)
[r, c] = size(nueva_matriz);

% Evaluando la matriz con 'r' y 'c' para tener
% los extremos de la nueva matriz
for ren = 1:r
    for col = 1:c
        nueva_matriz(ren, col) = input('Dame el valor: ')
        % Ingresar el valor para modificar ese lugar de la matriz
    end
end
disp(nueva_matriz)


%% Matriz de unos

matriz2 = ones(3, 4);
disp(matriz2)


%% Matriz aleatoria

aleatorio = rand() % Da numeros >decimales< con un rango de 0-1
aleatorio2 = randi(5) % Da numeros >enteros< de 0-5
aleatorio3 = rand(2) % Crea una matriz de 2x2 compuesta por decimales de 0-1
matriz3 = randi([5 20], 2, 4) % Crea una matriz 2x4 con valores del 5-20



