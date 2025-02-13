clear;
clc;

%%%%%% --- Método Gauss: Actividad 4 --- %%%%%%

              %%% Integrantes %%%

             % Sebastián Quevedo %
               % Alondra Silva %
             % Luis Pablo Herrera %


r1 = [2 6 1 7];
r2 = [1 2 -1 -1];
r3 = [5 7 -4 9];

% Ordenar Matriz
if r1(:,1) == 1 || r1(:,1) == -1
    matriz_gauss = [r1; r2; r3];
elseif r2(:,1) == 1 || r2(:,1) == -1
    matriz_gauss = [r2; r1; r3];
elseif r3(:,1) == 1 || r3(:,1) == -1
    matriz_gauss = [r3; r2; r1];
else
    fprintf('No se puede...')
end

disp(matriz_gauss)

r1 = matriz_gauss(1,:);
r2 = matriz_gauss(2,:);
r3 = matriz_gauss(3,:);

% Multiplicación Gauss
r2 = (r1 * r2(1,1)) + (r2 * (-1 * r1(1,1)));
r3 = (r1 * r3(1,1)) + (r3 * (-1 * r1(1,1)));
r3 = (r2 * r3(1,2)) + (r3 * (-1 * r2(1,2)));

matriz_gauss = [r1; r2; r3];
disp(matriz_gauss)

%Resolver Incógnitas
vri_r3 = matriz_gauss(3,4);
vri_r2 = matriz_gauss(2,4);
vri_r1 = matriz_gauss(1,4);

z = vri_r3 / matriz_gauss(3,3);
vri_r2 = vri_r2 - (z * matriz_gauss(2,3));
y = vri_r2 / matriz_gauss(2,2);
vri_r1 = vri_r1 - (z * matriz_gauss(1,3)) - (y * matriz_gauss(1,2));
x = vri_r1 / matriz_gauss(1,1);

disp(['x = ', num2str(x)])
disp(['y = ',num2str(y)])
disp(['z = ',num2str(z)])


