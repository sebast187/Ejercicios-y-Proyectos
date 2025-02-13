clear;
clc;

r1 = [-8 23 -15 0];
r2 = [1 -1 -5125 -143500];
r3 = [1 1 -1 48];

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

fprintf('Matriz reordenada:\n')
disp(matriz_gauss)

r1 = matriz_gauss(1,:);
r2 = matriz_gauss(2,:);
r3 = matriz_gauss(3,:);

% Multiplicación Gauss
r2 = (r1 * r2(1,1)) + (r2 * (-1 * r1(1,1)));
r3 = (r1 * r3(1,1)) + (r3 * (-1 * r1(1,1)));
r3 = (r2 * r3(1,2)) + (r3 * (-1 * r2(1,2)));

matriz_gauss = [r1; r2; r3];
fprintf('Matriz Gauss:\n')
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

fprintf('\nIncógnitas resueltas:\n\n')
disp(['T_u1 = ', num2str(x)])
disp(['T_u2 = ',num2str(y)])
disp(['T_u3 = ',num2str(z)])

% Evaluar si están correctas las variables
r1 = [-8 23 -15];
r2 = [1 -1 -5125];
r3 = [1 1 -1];

vectorIncog = [x, y, z];
prodPuntoR1 = dot(r1, vectorIncog);
prodPuntoR2 = dot(r2, vectorIncog);
prodPuntoR3 = dot(r3, vectorIncog);

fprintf('\n\nEvaluar vector de términos independientes:\n\n')
disp(prodPuntoR1)
disp(prodPuntoR2)
disp(prodPuntoR3)
